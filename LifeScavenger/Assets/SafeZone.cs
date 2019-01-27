using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SafeZone : MonoBehaviour
{
    private PlayerStats myStat;
    public GameObject safeZonePanel;
    // Start is called before the first frame update
    void Start()
    {
        myStat = FindObjectOfType<PlayerStats>();
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void OnTriggerEnter(Collider other)
    {
        //print();

        if (other.gameObject.name.Equals("MainCharacter")) {
            //print("Your Safe");
            myStat.setSafeZone(true);
            safeZonePanel.SetActive(true);
        }

    }

    public void OnTriggerExit(Collider other)
    {
        //print();

        if (other.gameObject.name.Equals("MainCharacter"))
        {
            //print("Your not Safe");
            myStat.setSafeZone(false);
            safeZonePanel.SetActive(false);
        }

    }


}
