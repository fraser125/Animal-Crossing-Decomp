lbl_804313F0:
/* 804313F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804313F4  7C 08 02 A6 */	mflr r0
/* 804313F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804313FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80431400  7C 9F 23 78 */	mr r31, r4
/* 80431404  93 C1 00 08 */	stw r30, 8(r1)
/* 80431408  7C 7E 1B 78 */	mr r30, r3
/* 8043140C  3C 7E 00 01 */	addis r3, r30, 1
/* 80431410  A8 63 4D B8 */	lha r3, 0x4db8(r3)
/* 80431414  2C 03 FF FF */	cmpwi r3, -1
/* 80431418  41 82 00 08 */	beq lbl_80431420
/* 8043141C  4B F8 86 E5 */	bl mEnv_CancelReservedPointLight
lbl_80431420:
/* 80431420  3C 7E 00 01 */	addis r3, r30, 1
/* 80431424  A8 63 4D BA */	lha r3, 0x4dba(r3)
/* 80431428  2C 03 FF FF */	cmpwi r3, -1
/* 8043142C  41 82 00 0C */	beq lbl_80431438
/* 80431430  7F E4 FB 78 */	mr r4, r31
/* 80431434  4B F8 86 CD */	bl mEnv_CancelReservedPointLight
lbl_80431438:
/* 80431438  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8043143C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80431440  83 C1 00 08 */	lwz r30, 8(r1)
/* 80431444  7C 08 03 A6 */	mtlr r0
/* 80431448  38 21 00 10 */	addi r1, r1, 0x10
/* 8043144C  4E 80 00 20 */	blr 
