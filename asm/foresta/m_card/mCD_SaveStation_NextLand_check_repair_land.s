lbl_804012CC:
/* 804012CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804012D0  7C 08 02 A6 */	mflr r0
/* 804012D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804012D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804012DC  7C 9F 23 78 */	mr r31, r4
/* 804012E0  93 C1 00 08 */	stw r30, 8(r1)
/* 804012E4  7C 7E 1B 78 */	mr r30, r3
/* 804012E8  4B FF B4 9D */	bl mCD_check_broken_land
/* 804012EC  2C 03 00 01 */	cmpwi r3, 1
/* 804012F0  40 82 00 54 */	bne lbl_80401344
/* 804012F4  7F C3 F3 78 */	mr r3, r30
/* 804012F8  4B FF B5 71 */	bl mCD_repair_load_land
/* 804012FC  2C 03 00 01 */	cmpwi r3, 1
/* 80401300  40 82 00 14 */	bne lbl_80401314
/* 80401304  80 7F 00 00 */	lwz r3, 0(r31)
/* 80401308  38 03 00 01 */	addi r0, r3, 1
/* 8040130C  90 1F 00 00 */	stw r0, 0(r31)
/* 80401310  48 00 00 60 */	b lbl_80401370
lbl_80401314:
/* 80401314  38 60 00 03 */	li r3, 3
/* 80401318  38 00 00 01 */	li r0, 1
/* 8040131C  90 7F 00 00 */	stw r3, 0(r31)
/* 80401320  80 7E 00 00 */	lwz r3, 0(r30)
/* 80401324  7C 63 18 F8 */	nor r3, r3, r3
/* 80401328  54 63 07 FE */	clrlwi r3, r3, 0x1f
/* 8040132C  90 7E 00 00 */	stw r3, 0(r30)
/* 80401330  90 1E 00 04 */	stw r0, 4(r30)
/* 80401334  80 7E 00 04 */	lwz r3, 4(r30)
/* 80401338  4B FF 91 21 */	bl mCD_get_size
/* 8040133C  90 7E 00 08 */	stw r3, 8(r30)
/* 80401340  48 00 00 30 */	b lbl_80401370
lbl_80401344:
/* 80401344  38 60 00 03 */	li r3, 3
/* 80401348  38 00 00 01 */	li r0, 1
/* 8040134C  90 7F 00 00 */	stw r3, 0(r31)
/* 80401350  80 7E 00 00 */	lwz r3, 0(r30)
/* 80401354  7C 63 18 F8 */	nor r3, r3, r3
/* 80401358  54 63 07 FE */	clrlwi r3, r3, 0x1f
/* 8040135C  90 7E 00 00 */	stw r3, 0(r30)
/* 80401360  90 1E 00 04 */	stw r0, 4(r30)
/* 80401364  80 7E 00 04 */	lwz r3, 4(r30)
/* 80401368  4B FF 90 F1 */	bl mCD_get_size
/* 8040136C  90 7E 00 08 */	stw r3, 8(r30)
lbl_80401370:
/* 80401370  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80401374  38 60 00 01 */	li r3, 1
/* 80401378  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8040137C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80401380  7C 08 03 A6 */	mtlr r0
/* 80401384  38 21 00 10 */	addi r1, r1, 0x10
/* 80401388  4E 80 00 20 */	blr 
