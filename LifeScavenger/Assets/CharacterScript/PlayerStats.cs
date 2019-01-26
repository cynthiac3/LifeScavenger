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

    //STAT ACTIF
    private int lifeCurrent;
    private int hitPointCurrent;
    private float weightCurrent;
    private float staminaCurrent;
    private int inventorySpaceCurrent;
    private float mouvementSpeed = 5f;

    // Start is called before the first frame update
    void Start(){
        hitPointBar.maxValue = HitPointMaximum;
        staminaBar.maxValue = StaminaMaximum;
        lifeCurrent = LifeMaximum;
        hitPointCurrent = HitPointMaximum;
        weightCurrent = 0;
        staminaCurrent = StaminaMaximum;
        inventorySpaceCurrent = 0;
        updateUI();
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

        hitPointBar.value = hitPointUI;
        staminaBar.value = staminaUI;
    }

    public void calculateValues() {
        //print("Before : " + staminaCurrent.ToString());
        staminaCurrent -= StaminaOverTime * Time.deltaTime;
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

    public void takeObject( int space , int weight ) {
        if ((inventorySpaceCurrent - space <= 0) || (weightCurrent + weight >= WeightMax))
        {
            //CANT TAKE
        }
        else {
            inventorySpaceCurrent -= space;
            weightCurrent += weight;
        }
        updateUI();
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
}
