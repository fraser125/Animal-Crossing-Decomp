lbl_80461C20:
/* 80461C20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80461C24  7C 08 02 A6 */	mflr r0
/* 80461C28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80461C2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80461C30  7C 9F 23 78 */	mr r31, r4
/* 80461C34  93 C1 00 08 */	stw r30, 8(r1)
/* 80461C38  7C 7E 1B 78 */	mr r30, r3
/* 80461C3C  A8 83 00 6E */	lha r4, 0x6e(r3)
/* 80461C40  38 64 FF FF */	addi r3, r4, -1
/* 80461C44  7C 80 07 35 */	extsh. r0, r4
/* 80461C48  B0 7E 00 6E */	sth r3, 0x6e(r30)
/* 80461C4C  40 80 00 34 */	bge lbl_80461C80
/* 80461C50  4B BF B0 A5 */	bl fqrand
/* 80461C54  3C 60 80 64 */	lis r3, lit_1461@ha /* 0x80644744@ha */
/* 80461C58  C0 03 47 44 */	lfs f0, lit_1461@l(r3)  /* 0x80644744@l */
/* 80461C5C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80461C60  40 81 00 14 */	ble lbl_80461C74
/* 80461C64  7F C3 F3 78 */	mr r3, r30
/* 80461C68  7F E4 FB 78 */	mr r4, r31
/* 80461C6C  48 00 00 E1 */	bl minsect_batta_jump_process_init
/* 80461C70  48 00 00 10 */	b lbl_80461C80
lbl_80461C74:
/* 80461C74  7F C3 F3 78 */	mr r3, r30
/* 80461C78  7F E4 FB 78 */	mr r4, r31
/* 80461C7C  4B FF FA DD */	bl minsect_batta_normal_process_init
lbl_80461C80:
/* 80461C80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80461C84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80461C88  83 C1 00 08 */	lwz r30, 8(r1)
/* 80461C8C  7C 08 03 A6 */	mtlr r0
/* 80461C90  38 21 00 10 */	addi r1, r1, 0x10
/* 80461C94  4E 80 00 20 */	blr 
