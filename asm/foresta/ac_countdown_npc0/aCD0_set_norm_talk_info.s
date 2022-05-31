lbl_80516D6C:
/* 80516D6C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80516D70  7C 08 02 A6 */	mflr r0
/* 80516D74  90 01 00 24 */	stw r0, 0x24(r1)
/* 80516D78  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80516D7C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80516D80  7C 7E 1B 78 */	mr r30, r3
/* 80516D84  4B EB B1 7D */	bl mNpc_GetNpcLooks
/* 80516D88  7C 7F 1B 78 */	mr r31, r3
/* 80516D8C  4B B4 5F 69 */	bl fqrand
/* 80516D90  3C 60 80 65 */	lis r3, data_80649024@ha /* 0x80649024@ha */
/* 80516D94  80 BE 09 9C */	lwz r5, 0x99c(r30)
/* 80516D98  38 83 90 24 */	addi r4, r3, data_80649024@l /* 0x80649024@l */
/* 80516D9C  3C 60 80 6A */	lis r3, msg_base_660@ha /* 0x8069FDDC@ha */
/* 80516DA0  C0 04 00 00 */	lfs f0, 0(r4)
/* 80516DA4  57 E0 10 3A */	slwi r0, r31, 2
/* 80516DA8  38 63 FD DC */	addi r3, r3, msg_base_660@l /* 0x8069FDDC@l */
/* 80516DAC  2C 05 00 07 */	cmpwi r5, 7
/* 80516DB0  EC 00 00 72 */	fmuls f0, f0, f1
/* 80516DB4  7C 03 00 2E */	lwzx r0, r3, r0
/* 80516DB8  FC 00 00 1E */	fctiwz f0, f0
/* 80516DBC  D8 01 00 08 */	stfd f0, 8(r1)
/* 80516DC0  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80516DC4  7C 60 1A 14 */	add r3, r0, r3
/* 80516DC8  40 80 00 18 */	bge lbl_80516DE0
/* 80516DCC  2C 05 00 05 */	cmpwi r5, 5
/* 80516DD0  40 80 00 08 */	bge lbl_80516DD8
/* 80516DD4  48 00 00 0C */	b lbl_80516DE0
lbl_80516DD8:
/* 80516DD8  38 63 00 11 */	addi r3, r3, 0x11
/* 80516DDC  48 00 00 0C */	b lbl_80516DE8
lbl_80516DE0:
/* 80516DE0  54 A0 10 3A */	slwi r0, r5, 2
/* 80516DE4  7C 63 02 14 */	add r3, r3, r0
lbl_80516DE8:
/* 80516DE8  4B E8 17 2D */	bl mDemo_Set_msg_num
/* 80516DEC  4B FF FE 8D */	bl aCD0_set_free_str
/* 80516DF0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80516DF4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80516DF8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80516DFC  7C 08 03 A6 */	mtlr r0
/* 80516E00  38 21 00 20 */	addi r1, r1, 0x20
/* 80516E04  4E 80 00 20 */	blr 
