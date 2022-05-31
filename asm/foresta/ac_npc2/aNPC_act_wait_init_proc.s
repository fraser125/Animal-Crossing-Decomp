lbl_8053F550:
/* 8053F550  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053F554  7C 08 02 A6 */	mflr r0
/* 8053F558  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053F55C  38 00 00 00 */	li r0, 0
/* 8053F560  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053F564  7C 7F 1B 78 */	mr r31, r3
/* 8053F568  98 03 07 F6 */	stb r0, 0x7f6(r3)
/* 8053F56C  4B FF BE E5 */	bl func_8053B450
/* 8053F570  98 7F 07 FC */	stb r3, 0x7fc(r31)
/* 8053F574  7F E3 FB 78 */	mr r3, r31
/* 8053F578  4B FF BE D9 */	bl func_8053B450
/* 8053F57C  3C 80 80 6A */	lis r4, aNPC_wait_action@ha /* 0x806A3B48@ha */
/* 8053F580  7C 60 1B 78 */	mr r0, r3
/* 8053F584  38 84 3B 48 */	addi r4, r4, aNPC_wait_action@l /* 0x806A3B48@l */
/* 8053F588  7F E3 FB 78 */	mr r3, r31
/* 8053F58C  7C 84 00 AE */	lbzx r4, r4, r0
/* 8053F590  4B FF E7 C1 */	bl aNPC_setupAction
/* 8053F594  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053F598  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053F59C  7C 08 03 A6 */	mtlr r0
/* 8053F5A0  38 21 00 10 */	addi r1, r1, 0x10
/* 8053F5A4  4E 80 00 20 */	blr 
