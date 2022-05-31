lbl_805B3688:
/* 805B3688  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B368C  7C 08 02 A6 */	mflr r0
/* 805B3690  38 60 00 47 */	li r3, 0x47
/* 805B3694  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B3698  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805B369C  93 C1 00 08 */	stw r30, 8(r1)
/* 805B36A0  7C 9E 23 78 */	mr r30, r4
/* 805B36A4  38 80 00 0A */	li r4, 0xa
/* 805B36A8  4B DE A7 25 */	bl mEv_get_save_area
/* 805B36AC  7C 7F 1B 78 */	mr r31, r3
/* 805B36B0  7F C3 F3 78 */	mr r3, r30
/* 805B36B4  4B E0 5E F1 */	bl staffroll_light_dt
/* 805B36B8  38 00 00 00 */	li r0, 0
/* 805B36BC  98 1F 00 14 */	stb r0, 0x14(r31)
/* 805B36C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B36C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805B36C8  83 C1 00 08 */	lwz r30, 8(r1)
/* 805B36CC  7C 08 03 A6 */	mtlr r0
/* 805B36D0  38 21 00 10 */	addi r1, r1, 0x10
/* 805B36D4  4E 80 00 20 */	blr 
