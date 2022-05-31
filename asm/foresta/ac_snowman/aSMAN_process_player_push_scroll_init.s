lbl_804A6014:
/* 804A6014  3C 80 80 4A */	lis r4, aSMAN_process_player_push_scroll@ha /* 0x804A6024@ha */
/* 804A6018  38 04 60 24 */	addi r0, r4, aSMAN_process_player_push_scroll@l /* 0x804A6024@l */
/* 804A601C  90 03 01 90 */	stw r0, 0x190(r3)
/* 804A6020  4E 80 00 20 */	blr 
