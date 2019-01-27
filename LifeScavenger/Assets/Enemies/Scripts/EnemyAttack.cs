using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Animator))]
public class EnemyAttack : MonoBehaviour
{
    bool isAttacking = false;
    Animator anim;
    // Start is called before the first frame update
    void Start()
    {
        anim = GetComponent<Animator>();
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    void Attack()
    {

    }

    void OnTriggerEnter(Collider c)
    {
        Debug.Log("OnTriggerEnter Attacking c == " + c.tag != null? c.name.ToString() : "null");
        if (c.tag == "Player")
        {
            isAttacking = true;
            anim.SetTrigger("Attack");
            Debug.Log("is Attacking");
        }
    }
    void OnTriggerExit(Collider c)
    {
        Debug.Log("OnTriggerExit Attacking");
        if (c.tag == "Player")
        {
            isAttacking = false;
            anim.SetTrigger("EndAttack");
            Debug.Log("end Attack");
        }
    }
    void HitEvent()
    {
        Debug.Log("BIM!!");

    }
}
