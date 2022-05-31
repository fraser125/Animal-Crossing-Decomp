lbl_803BF9E8:
/* 803BF9E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BF9EC  7C 08 02 A6 */	mflr r0
/* 803BF9F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BF9F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803BF9F8  7C 9F 23 78 */	mr r31, r4
/* 803BF9FC  93 C1 00 08 */	stw r30, 8(r1)
/* 803BFA00  7C 7E 1B 78 */	mr r30, r3
/* 803BFA04  4B FC 3B 3D */	bl func_80383540
/* 803BFA08  4B FC 3C 6D */	bl mChoice_check_main_index
/* 803BFA0C  2C 03 00 00 */	cmpwi r3, 0
/* 803BFA10  40 82 00 18 */	bne lbl_803BFA28
/* 803BFA14  7F C3 F3 78 */	mr r3, r30
/* 803BFA18  7F E4 FB 78 */	mr r4, r31
/* 803BFA1C  38 A0 00 05 */	li r5, 5
/* 803BFA20  4B FF FF 75 */	bl mMsg_request_main_disappear_wait
/* 803BFA24  48 00 00 08 */	b lbl_803BFA2C
lbl_803BFA28:
/* 803BFA28  38 60 00 00 */	li r3, 0
lbl_803BFA2C:
/* 803BFA2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BFA30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803BFA34  83 C1 00 08 */	lwz r30, 8(r1)
/* 803BFA38  7C 08 03 A6 */	mtlr r0
/* 803BFA3C  38 21 00 10 */	addi r1, r1, 0x10
/* 803BFA40  4E 80 00 20 */	blr 
