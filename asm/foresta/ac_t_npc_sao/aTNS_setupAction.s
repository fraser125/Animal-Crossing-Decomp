lbl_804A92A4:
/* 804A92A4  3C A0 80 69 */	lis r5, process@ha /* 0x8068ED7C@ha */
/* 804A92A8  54 80 15 BA */	rlwinm r0, r4, 2, 0x16, 0x1d
/* 804A92AC  38 A5 ED 7C */	addi r5, r5, process@l /* 0x8068ED7C@l */
/* 804A92B0  54 86 06 3E */	clrlwi r6, r4, 0x18
/* 804A92B4  7C 05 00 2E */	lwzx r0, r5, r0
/* 804A92B8  90 03 01 CC */	stw r0, 0x1cc(r3)
/* 804A92BC  98 83 01 D0 */	stb r4, 0x1d0(r3)
/* 804A92C0  90 C3 01 C0 */	stw r6, 0x1c0(r3)
/* 804A92C4  4E 80 00 20 */	blr 
