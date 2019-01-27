﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class healingPot : MonoBehaviour
{
    private const int COOLDOWN = 90;
    private PlayerStats mainCharStat;
    private bool potUsed;
    // Start is called before the first frame update

    private float timerActif;
    void Start()
    {
        timerActif = 0;
        potUsed = false;
        mainCharStat = FindObjectOfType<PlayerStats>();
    }
    void Update()
    {
        if (!mainCharStat.getSafeZoneStatus() && potUsed) {
            timerActif -= Time.deltaTime;
        }
    }

    public void OnTriggerStay(Collider other)
    {
        if (Input.GetKeyDown(KeyCode.F))
        {
            if ( !potUsed && timerActif == 0 ){
                int hitPointsRecovery = Random.Range(1,3);
                print("HP regen : " + hitPointsRecovery.ToString() );
                mainCharStat.healingHitPoint(hitPointsRecovery);

                potUsed = true;
                timerActif = COOLDOWN;
            }
            
        }
    }
    public float getTimerActif() { return timerActif; }
}
