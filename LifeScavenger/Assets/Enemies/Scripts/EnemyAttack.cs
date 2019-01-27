using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Animator))]
public class EnemyAttack : MonoBehaviour
{
    bool isAttacking = false;
    GameObject target;
    Animator anim;
    public ParticleSystem attackFX;
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
            target = c.gameObject;
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
            target = null;
        }
    }
    void HitEvent()
    {
        Debug.Log("BIM!!");
        attackFX.Play();
        if (target != null && Vector3.Distance(target.transform.position, transform.position) < 1f)
        {
            target.GetComponentInParent<PlayerStats>().loseHitPoint();
        }
    }
}
