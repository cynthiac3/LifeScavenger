using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RunningSmokeFXScript : MonoBehaviour
{
    public ParticleSystem smokeFX;
    // Start is called before the first frame update
    void Start()
    {
        smokeFX.Stop();
    }
    public void StartRunning()
    {
        smokeFX.Play();
    }
    public void StopRunning()
    {
        smokeFX.Stop();
    }
}
