using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PlayerStats : MonoBehaviour
{

    public int LifeMaximum = 3;
    public int HitPointMaximum = 5;
    public float WeightMax = 50f;
    public float StaminaMaximum = 75;
    public int InventorySpaceMax = 10;
    public float StaminaOverTime = 0.5f;

    //ObjectUI
    public Slider hitPointBar;
    public Slider staminaBar;
    public Text lifeText;
    public Text weightText;
    public Text inventoryText;
    public Material HealthBar;
    

    //STAT ACTIF
    private int lifeCurrent;
    private int hitPointCurrent;
    private float weightCurrent;
    private float staminaCurrent;
    private int inventorySpaceCurrent;
    private float mouvementSpeed = 5f;
    private List<string> inventoryItemName;
    private bool isSafeZone;
    private List<storedInventory> safeZoneInventory;

    // Start is called before the first frame update
    void Start(){
        //HealthBar = FindObjectOfType<HealthBar_Mat>();
        safeZoneInventory = new List<storedInventory>();
        fillNeedCaptureObject();
        showCollectedItem();

        HealthBar.SetFloat("_HealthTotal", HitPointMaximum);

        hitPointBar.maxValue = HitPointMaximum;
        staminaBar.maxValue = StaminaMaximum;
        lifeCurrent = LifeMaximum;
        hitPointCurrent = HitPointMaximum;
        weightCurrent = 0;
        staminaCurrent = StaminaMaximum;
        inventorySpaceCurrent = 0;
        inventoryItemName = new List<string>();
        isSafeZone = false;
        updateUI();
    }
    public void fillNeedCaptureObject() {
        safeZoneInventory.Add(new storedInventory(("Bake"), GameObject.Find("Bake")));
        safeZoneInventory.Add(new storedInventory(("TableWeapon1"), GameObject.Find("TableWeapon1")));
        safeZoneInventory.Add(new storedInventory(("TableWeapon2"), GameObject.Find("TableWeapon2")));
        safeZoneInventory.Add(new storedInventory(("TableTools1"), GameObject.Find("TableTools1")));
        safeZoneInventory.Add(new storedInventory(("TableTools2"), GameObject.Find("TableTools2")));
        safeZoneInventory.Add(new storedInventory(("Workbench"), GameObject.Find("Workbench")));
        safeZoneInventory.Add(new storedInventory(("TableKitchen"), GameObject.Find("TableKitchen")));
        safeZoneInventory.Add(new storedInventory(("Bed-1"), GameObject.Find("Bed-1")));
        safeZoneInventory.Add(new storedInventory(("Bed-2"), GameObject.Find("Bed-2")));
        safeZoneInventory.Add(new storedInventory(("Bed-3"), GameObject.Find("Bed-3")));
        safeZoneInventory.Add(new storedInventory(("Bed-4"), GameObject.Find("Bed-4")));
        safeZoneInventory.Add(new storedInventory(("Bed-5"), GameObject.Find("Bed-5")));
        safeZoneInventory.Add(new storedInventory(("Bed-6"), GameObject.Find("Bed-6")));
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
        float staminaUI = Mathf.Clamp(staminaCurrent, 0, StaminaMaximum);
        float weightPourc =  (weightCurrent/WeightMax) * 100;

        

        lifeText.text = "LIFE : " + lifeCurrent.ToString();
        weightText.text = "WEIGHT : " + weightPourc.ToString() + "%";
        inventoryText.text = "SPACE: " + inventorySpaceCurrent.ToString() + "/" + InventorySpaceMax.ToString();

        HealthBar.SetFloat("_HealthCurrent", hitPointUI);

        hitPointBar.value = hitPointUI;
        staminaBar.value = staminaUI;
    }

    public void calculateValues() {
        //print("Before : " + staminaCurrent.ToString());
        if (!isSafeZone){
            staminaCurrent -= StaminaOverTime * Time.deltaTime;
        }
        //print("After : " + staminaCurrent.ToString());
        if (staminaCurrent == 0f) {
            outOfStamina();
        }
    }

    public void outOfStamina() {
        bool isOutOfHP = false;
        while (isOutOfHP) {
            isOutOfHP = (loseHitPoint() == 0);
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
    public int loseHitPoint() {
        if (hitPointCurrent > 0) {
            hitPointCurrent--;
        }

        if (lifeCurrent > 0){
            if (lifeCurrent == 1 && hitPointCurrent == 0) {
                //GAME OVER
                return -1;
            }

            if (hitPointCurrent == 0) {
                hitPointCurrent = HitPointMaximum;
                lifeCurrent--;
                updateUI();
                return 0;
            }
        }
        else {
            //GAME OVER
            return -1;
        }

        updateUI();
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
    }

    private void setCaptureItem(string name)
    {
        foreach (storedInventory aObject in safeZoneInventory)
        {
            if (aObject.getName().Equals(name))
            {
                aObject.captureItem();
            }
        }
    }
}
