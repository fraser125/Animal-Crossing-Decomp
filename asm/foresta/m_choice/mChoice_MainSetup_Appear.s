lbl_80384748:
/* 80384748  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8038474C  7C 08 02 A6 */	mflr r0
/* 80384750  3C 80 80 64 */	lis r4, lit_402@ha /* 0x80641750@ha */
/* 80384754  90 01 00 14 */	stw r0, 0x14(r1)
/* 80384758  38 A4 17 50 */	addi r5, r4, lit_402@l /* 0x80641750@l */
/* 8038475C  C0 05 00 00 */	lfs f0, 0(r5)
/* 80384760  38 80 00 01 */	li r4, 1
/* 80384764  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80384768  38 00 FF FF */	li r0, -1
/* 8038476C  7C 7F 1B 78 */	mr r31, r3
/* 80384770  D0 03 00 DC */	stfs f0, 0xdc(r3)
/* 80384774  90 83 00 E0 */	stw r4, 0xe0(r3)
/* 80384778  90 03 00 E4 */	stw r0, 0xe4(r3)
/* 8038477C  90 83 00 E8 */	stw r4, 0xe8(r3)
/* 80384780  D0 03 00 F8 */	stfs f0, 0xf8(r3)
/* 80384784  4B FF F3 F1 */	bl mChoice_Clear_ChoseNum
/* 80384788  4B FF FD 95 */	bl mChoice_sound_SENTAKU_OPEN
/* 8038478C  7F E3 FB 78 */	mr r3, r31
/* 80384790  4B FF F1 B9 */	bl mChoice_Set_DisplayScaleAndDisplayPos
/* 80384794  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80384798  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8038479C  7C 08 03 A6 */	mtlr r0
/* 803847A0  38 21 00 10 */	addi r1, r1, 0x10
/* 803847A4  4E 80 00 20 */	blr 
