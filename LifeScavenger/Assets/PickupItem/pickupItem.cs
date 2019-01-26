using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class pickupItem : MonoBehaviour
{
    // Start is called before the first frame update
    public int typeItem;
    public string itemName;

    private bool pickupActivate;
    private PlayerStats mainCharStat;

    void Start()
    {
        if (typeItem < 0 ) {
            typeItem = 0;
        }
        pickupActivate = false;
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void OnCollisionEnter(Collision collision)
    {
        pickupActivate = true;
    }

    public void OnCollisionExit(Collision collision)
    {
        pickupActivate = false;
    }
    public int getSpace() {
        int spaceUsed = 0;

        switch (typeItem) {
            //Small
            case 0: 
                spaceUsed = 1;
                break;
            //Medium
            case 1:
                spaceUsed = 2;
                break;
            //Big
            default:
                spaceUsed = 6;
                break;
            
        }
        return spaceUsed;
    }
    public int getWeight() {

        return getSpace() * 3;
    }

    public void pickUp() {
        Destroy(this.gameObject);
    }


    public bool getPickupActivation() { return pickupActivate; }

    //
}
