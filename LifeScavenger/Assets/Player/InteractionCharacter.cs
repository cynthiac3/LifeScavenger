using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InteractionCharacter : MonoBehaviour
{
    private pickupItem item;
    private PlayerStats myStat;
    // Start is called before the first frame update
    void Start()
    {
        item = new pickupItem();
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.E))
        {
            item = FindObjectOfType<pickupItem>();
            myStat = FindObjectOfType<PlayerStats>();
            if ( item.getPickupActivation() ) {
                print("TakeObject");
                int takeIt = myStat.takeObject(item.getSpace(), item.getWeight(), item.itemName);
                if (takeIt == 0) {
                    item.pickUp();
                }

            }
        }  
    }

    public void OnTriggerEnter(Collider other)
    {
        
    }
}
