lbl_8055550C:
/* 8055550C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80555510  7C 08 02 A6 */	mflr r0
/* 80555514  90 01 00 14 */	stw r0, 0x14(r1)
/* 80555518  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8055551C  7C 7F 1B 78 */	mr r31, r3
/* 80555520  80 03 01 98 */	lwz r0, 0x198(r3)
/* 80555524  2C 00 00 01 */	cmpwi r0, 1
/* 80555528  40 82 00 18 */	bne lbl_80555540
/* 8055552C  38 00 00 01 */	li r0, 1
/* 80555530  38 A0 00 01 */	li r5, 1
/* 80555534  90 1F 09 CC */	stw r0, 0x9cc(r31)
/* 80555538  48 00 0F E5 */	bl aNG2_setupAction
/* 8055553C  48 00 00 28 */	b lbl_80555564
lbl_80555540:
/* 80555540  3C 80 80 65 */	lis r4, lit_524@ha /* 0x806495D0@ha */
/* 80555544  38 7F 01 A8 */	addi r3, r31, 0x1a8
/* 80555548  C0 24 95 D0 */	lfs f1, lit_524@l(r4)  /* 0x806495D0@l */
/* 8055554C  4B E1 AF 3D */	bl cKF_FrameControl_passCheck_now
/* 80555550  2C 03 00 01 */	cmpwi r3, 1
/* 80555554  40 82 00 10 */	bne lbl_80555564
/* 80555558  80 7F 09 C0 */	lwz r3, 0x9c0(r31)
/* 8055555C  38 00 00 01 */	li r0, 1
/* 80555560  90 03 02 4C */	stw r0, 0x24c(r3)
lbl_80555564:
/* 80555564  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80555568  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8055556C  7C 08 03 A6 */	mtlr r0
/* 80555570  38 21 00 10 */	addi r1, r1, 0x10
/* 80555574  4E 80 00 20 */	blr 