lbl_803DA688:
/* 803DA688  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803DA68C  7C 08 02 A6 */	mflr r0
/* 803DA690  90 01 00 24 */	stw r0, 0x24(r1)
/* 803DA694  39 61 00 20 */	addi r11, r1, 0x20
/* 803DA698  4B CC 08 35 */	bl func_8009AECC
/* 803DA69C  7C 7B 1B 78 */	mr r27, r3
/* 803DA6A0  7C 9C 23 78 */	mr r28, r4
/* 803DA6A4  7C BD 2B 78 */	mr r29, r5
/* 803DA6A8  7C DE 33 78 */	mr r30, r6
/* 803DA6AC  7C FF 3B 78 */	mr r31, r7
/* 803DA6B0  4B FF EF 91 */	bl get_player_actor_withoutCheck
/* 803DA6B4  81 83 12 A4 */	lwz r12, 0x12a4(r3)
/* 803DA6B8  7F 63 DB 78 */	mr r3, r27
/* 803DA6BC  7F 84 E3 78 */	mr r4, r28
/* 803DA6C0  7F A5 EB 78 */	mr r5, r29
/* 803DA6C4  7F C6 F3 78 */	mr r6, r30
/* 803DA6C8  7F E7 FB 78 */	mr r7, r31
/* 803DA6CC  39 00 00 07 */	li r8, 7
/* 803DA6D0  7D 89 03 A6 */	mtctr r12
/* 803DA6D4  4E 80 04 21 */	bctrl 
/* 803DA6D8  30 03 FF FF */	addic r0, r3, -1
/* 803DA6DC  39 61 00 20 */	addi r11, r1, 0x20
/* 803DA6E0  7C 60 19 10 */	subfe r3, r0, r3
/* 803DA6E4  4B CC 08 35 */	bl func_8009AF18
/* 803DA6E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803DA6EC  7C 08 03 A6 */	mtlr r0
/* 803DA6F0  38 21 00 20 */	addi r1, r1, 0x20
/* 803DA6F4  4E 80 00 20 */	blr 
