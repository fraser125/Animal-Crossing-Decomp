lbl_80542520:
/* 80542520  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80542524  7C 08 02 A6 */	mflr r0
/* 80542528  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054252C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80542530  7C 7F 1B 78 */	mr r31, r3
/* 80542534  7C 83 23 78 */	mr r3, r4
/* 80542538  4B E9 71 09 */	bl get_player_actor_withoutCheck
/* 8054253C  28 03 00 00 */	cmplwi r3, 0
/* 80542540  41 82 00 30 */	beq lbl_80542570
/* 80542544  3C 80 80 65 */	lis r4, lit_3009@ha /* 0x80649438@ha */
/* 80542548  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 8054254C  C0 04 94 38 */	lfs f0, lit_3009@l(r4)  /* 0x80649438@l */
/* 80542550  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80542554  40 80 00 1C */	bge lbl_80542570
/* 80542558  A0 7F 00 06 */	lhz r3, 6(r31)
/* 8054255C  4B E5 DA 85 */	bl mEvNM_CheckJointEvent
/* 80542560  2C 03 00 00 */	cmpwi r3, 0
/* 80542564  40 82 00 0C */	bne lbl_80542570
/* 80542568  38 00 00 01 */	li r0, 1
/* 8054256C  98 1F 07 C8 */	stb r0, 0x7c8(r31)
lbl_80542570:
/* 80542570  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80542574  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80542578  7C 08 03 A6 */	mtlr r0
/* 8054257C  38 21 00 10 */	addi r1, r1, 0x10
/* 80542580  4E 80 00 20 */	blr 
