using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.Events;

public class PlayerStats : MonoBehaviour
{

    public int LifeMaximum = 3;
    public int HitPointMaximum = 5;
    public float WeightMax = 30f;
    public float StaminaMaximum = 75;
    public int InventorySpaceMax = 10;
    public float StaminaOverTime = 0.5f;

    //ObjectUI
    private Text hitPointText;
    private Text staminaText;
    private Text lifeText;
    private Text weightText;
    private Text inventoryText;
    private Text completedText;
    public Material HealthBar;
    public Material StaminaBar;
    public Material InventoryBar;
    public Material WeightBar;
    //public Material CompletedBar;
    private Transform spawnPoint;
    private Transform player;

    //sound effect
    //public AudioClip deathCharacter;
    //public AudioSource PlayerSource;
    private SoundManager musicManager;
    //STAT ACTIF
    private int lifeCurrent;
    private int hitPointCurrent;
    private float weightCurrent;
    private float staminaCurrent;
    private int inventorySpaceCurrent;
    private List<string> inventoryItemName;
    private bool isSafeZone;
    private List<storedInventory> safeZoneInventory;
    private bool ifAjustStat1;
    private bool ifAjustStat2;

    public delegate void RespawnAction();
    public static event RespawnAction OnRespawn;
    public GameObject successFX;

    GameObject gameover;
    Animator animator;

    // Start is called before the first frame update
    void Start(){
        SoundManager musicManager = GameObject.Find("SoundManager").GetComponent<SoundManager>();
        setupVariable();
        ifAjustStat1 = false;
        ifAjustStat2 = false;
        //HealthBar = FindObjectOfType<HealthBar_Mat>();
        safeZoneInventory = new List<storedInventory>();
        fillNeedCaptureObject();
        showCollectedItem();
        lifeCurrent = LifeMaximum;
        hitPointCurrent = HitPointMaximum;
        weightCurrent = 0;
        staminaCurrent = StaminaMaximum;
        inventorySpaceCurrent = 0;
        inventoryItemName = new List<string>();
        isSafeZone = false;
        respawnCharacter();
        musicManager.playAmbiance();
        updateUI();
        gameover = GameObject.Find("GameOver");
        gameover.SetActive(false);
        animator = transform.GetComponent<Animator>();
    }

    public void setupVariable() {

        hitPointText = GameObject.Find("HPText").GetComponent<Text>();
        staminaText = GameObject.Find("StaminaText").GetComponent<Text>();
        lifeText = GameObject.Find("LifeText").GetComponent<Text>();
        weightText = GameObject.Find("WeightText").GetComponent<Text>();
        inventoryText = GameObject.Find("InventoryText").GetComponent<Text>();
        completedText = GameObject.Find("CompletedText").GetComponent<Text>();

        spawnPoint = GameObject.Find("SpawningPoint").GetComponent<Transform>();
        player = GameObject.Find("MainCharacter").GetComponent<Transform>();

        //deathCharacter = (AudioClip)Resources.Load("DeathSFX", typeof(AudioClip)); ;
    }

    public bool getSafeZoneStatus() { return isSafeZone; }
    public void fillNeedCaptureObject() {
        safeZoneInventory.Add(new storedInventory(("Bake")));
        safeZoneInventory.Add(new storedInventory(("TableWeapon1")));
        safeZoneInventory.Add(new storedInventory(("TableWeapon2")));
        safeZoneInventory.Add(new storedInventory(("TableTools1")));
        safeZoneInventory.Add(new storedInventory(("TableTools2")));
        safeZoneInventory.Add(new storedInventory(("Workbench")));
        safeZoneInventory.Add(new storedInventory(("TableKitchen")));
        safeZoneInventory.Add(new storedInventory(("Bed-1")));
        safeZoneInventory.Add(new storedInventory(("Bed-2")));
        safeZoneInventory.Add(new storedInventory(("Bed-3")));
        safeZoneInventory.Add(new storedInventory(("Bed-4")));
        safeZoneInventory.Add(new storedInventory(("Bed-5")));
        safeZoneInventory.Add(new storedInventory(("Bed-6")));
        safeZoneInventory.Add(new storedInventory(("Barrel-1")));
        safeZoneInventory.Add(new storedInventory(("Barrel-2")));
        safeZoneInventory.Add(new storedInventory(("Bucket-2")));
        safeZoneInventory.Add(new storedInventory(("Bucket-2")));
        safeZoneInventory.Add(new storedInventory(("Firewood-1")));
        safeZoneInventory.Add(new storedInventory(("Firewood-2")));
        safeZoneInventory.Add(new storedInventory(("Firewood-3")));
        safeZoneInventory.Add(new storedInventory(("Firewood-4")));
        safeZoneInventory.Add(new storedInventory(("Firewood-5")));
        safeZoneInventory.Add(new storedInventory(("Chair-1")));
        safeZoneInventory.Add(new storedInventory(("Chair-2")));
        safeZoneInventory.Add(new storedInventory(("Chair-3")));
        safeZoneInventory.Add(new storedInventory(("Staircase")));
        //ect...
    }

    public void showCollectedItem() {

        GameObject objectCollected;

        foreach (storedInventory aObject in safeZoneInventory) {

            //objectCollected = GetComponent(aObject.getName()).gameObject;
            objectCollected = aObject.getVisualComponent();
            if (objectCollected != null) {
                objectCollected.SetActive(aObject.getCapture());
            }
        }
    }

    // Update is called once per frame
    void Update()
    {
        updateUI();
    }

    public void updateUI() {
        calculateValues();
        int hitPointUI = Mathf.Clamp(hitPointCurrent, 0, HitPointMaximum);
        //float staminaUI = Mathf.Clamp(staminaCurrent, 0, StaminaMaximum);
        float staminaUI = (staminaCurrent/StaminaMaximum) * 100;
        float completedUI = (getNbCollected()/safeZoneInventory.Count) * 100;
        float weightPourc =  (weightCurrent/WeightMax) * 100;

        

        lifeText.text = lifeCurrent.ToString();
        weightText.text = "WEIGHT : " + weightPourc.ToString("F2") + "%";
        completedText.text = "COMPLETED : " + completedUI.ToString("F2") + "%";
        inventoryText.text = "SPACE: " + inventorySpaceCurrent.ToString() + "/" + InventorySpaceMax.ToString();       

        hitPointText.text = hitPointCurrent.ToString() + "/" + HitPointMaximum.ToString();
        staminaText.text = staminaCurrent.ToString("F2") + "%";

        
        HealthBar.SetFloat("_HealthTotal", HitPointMaximum);
        StaminaBar.SetFloat("_StaminaTotal", StaminaMaximum);
        InventoryBar.SetFloat("_InvWeightMax", InventorySpaceMax);
        WeightBar.SetFloat("_WeightMax", WeightMax);

        HealthBar.SetFloat("_HealthCurrent", hitPointUI);
        StaminaBar.SetFloat("_StaminaCurrent", staminaUI);
        InventoryBar.SetFloat("_InvWeightCurrent", inventorySpaceCurrent);
        WeightBar.SetFloat("_WeightCurrent", weightPourc);



    }

    public void calculateValues() {
        //print("Before : " + staminaCurrent.ToString());
        if (!isSafeZone){
            staminaCurrent -= StaminaOverTime * Time.deltaTime;
        }
        //print("After : " + staminaCurrent.ToString());
        if (staminaCurrent <= 0f) {
            outOfStamina();
        }
    }

    public void outOfStamina() {
        bool isOutOfHP = false;
        while (!isOutOfHP) {
            isOutOfHP = (loseHitPoint() <= 0);
        }

    }
    public void resplenishStamina() {
        staminaCurrent = StaminaMaximum;
    }

    public void healingHitPoint(int amount) {
        int currentHealing = amount;

        if ( hitPointCurrent + currentHealing > HitPointMaximum ) {
            currentHealing = HitPointMaximum - hitPointCurrent;
        }

        hitPointCurrent += currentHealing;
        updateUI();
    }

    public int takeObject( int space , int weight , string itemName) {
        if ((inventorySpaceCurrent + space > InventorySpaceMax) || (weightCurrent + weight >= (WeightMax*2)))
        {
            //CANT TAKE
            print("Can't take the object");
            return -1;
        }
        else {
            print("Can take the object: " + itemName);
            inventorySpaceCurrent += space;
            weightCurrent += weight;
            inventoryItemName.Add(itemName);

        }
        updateUI();
        return 0;
    }
    public int loseHitPoint()
    {
        if (hitPointCurrent > 0) {
            hitPointCurrent--;
        }
        
        if (lifeCurrent > 0){
            if (lifeCurrent == 1 && hitPointCurrent == 0) {
                //GAME OVER
                gameover.SetActive(true);
                animator.SetBool("Dead", true);
                return -1;
            }

            if (hitPointCurrent == 0) {
                hitPointCurrent = HitPointMaximum;
                lifeCurrent--;
                AudioSource aud = GetComponent<AudioSource>();
                //aud.PlayOneShot(deathCharacter);
                /*aud.clip = deathCharacter;
                aud.Play();*/

                //musicManager.playDeathSound();


                respawnCharacter();
                return 0;
            }
        }
        else {
            //GAME OVER
            return -1;
        }
        return 1;
    }

    public void setSafeZone(bool isSafe) {
        isSafeZone = isSafe;
        if (isSafe) {
            resplenishStamina();
            depositInventory();
        }
        showCollectedItem();
    }

    private void depositInventory() {
        foreach (string aObject in inventoryItemName)
        {
            setCaptureItem(aObject);
        }

        inventoryItemName.Clear();
        weightCurrent = 0;
        inventorySpaceCurrent = 0;
        adjustStats();
    }

    private void setCaptureItem(string name)
    {
        foreach (storedInventory aObject in safeZoneInventory)
        {
            if (aObject.getName().Equals(name))
            {
                aObject.captureItem();
                Transform droppedObjectTransform = aObject.getTransformObject();
                successFX = Instantiate(successFX, droppedObjectTransform.position, droppedObjectTransform.rotation);
            }
        }
    }

    public void respawnCharacter() {
        weightCurrent = 0;
        inventorySpaceCurrent = 0;
        hitPointCurrent = HitPointMaximum;

        player.transform.position = spawnPoint.transform.position;

        inventoryItemName.Clear();
        if (OnRespawn != null)
            OnRespawn();
    }
    public float getNbCollected() {
        float countNbGathered = 0;
        foreach (storedInventory aObject in safeZoneInventory)
        {
            if (aObject.getCapture()) { countNbGathered++; }
        }

        return countNbGathered;
    }
    public void adjustStats() {
        float countNbGathered = getNbCollected();

        float pourcGather = countNbGathered / safeZoneInventory.Count;

        if ( pourcGather >= 45 && !ifAjustStat1)
        {
            StaminaMaximum += 25;
            InventorySpaceMax += 5;
            ifAjustStat1 = true;
        }
        if ( pourcGather >= 85 && !ifAjustStat2)
        {
            HitPointMaximum += 2;
            WeightMax += 10;
            ifAjustStat2 = true;
        }
    }
}
