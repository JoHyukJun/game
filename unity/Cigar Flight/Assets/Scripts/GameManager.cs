using System.Collections;
using System.Collections.Generic;
using System.Diagnostics;
using System.Runtime.InteropServices;
using TMPro;
using UnityEngine;
using UnityEngine.SceneManagement;

public class GameManager : MonoBehaviour
{
    public static GameManager instance = null;

    [SerializeField]
    private TextMeshProUGUI text;

    [SerializeField]
    private GameObject gameOverPanel;

    private int fire = 0;

    [HideInInspector]
    public bool isGameOver = false;

    void Awake() {
        if (instance == null) {
            instance = this;
        }
    }

    public void IncreaseFire() {
        fire += 1;
        text.SetText(fire.ToString());

        if (fire % 30 == 0) {
            Player player = FindObjectOfType<Player>();
            if (player != null) {
                player.Upgrade();
            }
        }
    }

    public void SetGameOver(bool isWin) {
        isGameOver = true;

        EnemySpawner enemySpawner = FindObjectOfType<EnemySpawner>();

        if (enemySpawner != null) {
            enemySpawner.StopEnemyRoutione();
        }

        Invoke("ShowGameOverPanel", 2f);
    }

    void ShowGameOverPanel() {
        gameOverPanel.SetActive(true);
    }

    public void PlayAgain() {
        SceneManager.LoadScene("SampleScene");
    }
}
