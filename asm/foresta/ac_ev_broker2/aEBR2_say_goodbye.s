lbl_8051B9DC:
/* 8051B9DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051B9E0  7C 08 02 A6 */	mflr r0
/* 8051B9E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051B9E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051B9EC  93 C1 00 08 */	stw r30, 8(r1)
/* 8051B9F0  7C 7E 1B 78 */	mr r30, r3
/* 8051B9F4  4B EA 3C B5 */	bl func_803BF6A8
/* 8051B9F8  7C 7F 1B 78 */	mr r31, r3
/* 8051B9FC  4B EA 53 6D */	bl mMsg_Check_idling_now
/* 8051BA00  2C 03 00 01 */	cmpwi r3, 1
/* 8051BA04  40 82 00 18 */	bne lbl_8051BA1C
/* 8051BA08  7F E3 FB 78 */	mr r3, r31
/* 8051BA0C  4B EA 40 39 */	bl mMsg_request_main_disappear_wait_type1
/* 8051BA10  7F C3 F3 78 */	mr r3, r30
/* 8051BA14  38 80 00 0C */	li r4, 0xc
/* 8051BA18  48 00 01 4D */	bl aEBR2_setupAction
lbl_8051BA1C:
/* 8051BA1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051BA20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051BA24  83 C1 00 08 */	lwz r30, 8(r1)
/* 8051BA28  7C 08 03 A6 */	mtlr r0
/* 8051BA2C  38 21 00 10 */	addi r1, r1, 0x10
/* 8051BA30  4E 80 00 20 */	blr 
