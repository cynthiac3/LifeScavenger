using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NPCPickup : MonoBehaviour
{
    public GameObject follower;

    public Transform[] allyHousePositions;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void addFollower(GameObject newFollower) {
        follower = newFollower;
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Door") {
            follower.GetComponent<NPCFollow>().setDestination(allyHousePositions[0]);
        }   
    }
}
