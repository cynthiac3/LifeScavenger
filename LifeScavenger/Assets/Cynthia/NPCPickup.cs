using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NPCPickup : MonoBehaviour
{ 
    List<GameObject> followers = new List<GameObject>();

    public Transform[] allyHousePositions;

    public int nbAlliesReturned=0;

    public void addFollower(GameObject newFollower) {
        followers.Add(newFollower);
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Safe") { 
            // all current companions move to a position at the base/safe space
            for (int i = 0; i < followers.Count; i++) {
                Debug.Log(i);
                followers[i].GetComponent<NPCFollow>().setDestination(allyHousePositions[nbAlliesReturned]);
                nbAlliesReturned++;
            }
            followers.Clear();
        }   
    }
}
