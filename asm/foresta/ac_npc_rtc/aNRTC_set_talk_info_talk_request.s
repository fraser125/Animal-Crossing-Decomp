lbl_80573D64:
/* 80573D64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80573D68  7C 08 02 A6 */	mflr r0
/* 80573D6C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80573D70  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80573D74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80573D78  3C 63 00 03 */	addis r3, r3, 3
/* 80573D7C  88 03 88 7C */	lbz r0, -0x7784(r3)
/* 80573D80  28 00 00 09 */	cmplwi r0, 9
/* 80573D84  41 81 00 6C */	bgt lbl_80573DF0
/* 80573D88  3C 60 80 6C */	lis r3, lit_703@ha /* 0x806BF660@ha */
/* 80573D8C  54 00 10 3A */	slwi r0, r0, 2
/* 80573D90  38 63 F6 60 */	addi r3, r3, lit_703@l /* 0x806BF660@l */
/* 80573D94  7C 03 00 2E */	lwzx r0, r3, r0
/* 80573D98  7C 09 03 A6 */	mtctr r0
/* 80573D9C  4E 80 04 20 */	bctr 
lbl_80573DA0:
/* 80573DA0  38 60 09 CC */	li r3, 0x9cc
/* 80573DA4  48 00 00 50 */	b lbl_80573DF4
lbl_80573DA8:
/* 80573DA8  38 60 09 D1 */	li r3, 0x9d1
/* 80573DAC  48 00 00 48 */	b lbl_80573DF4
lbl_80573DB0:
/* 80573DB0  38 60 09 DA */	li r3, 0x9da
/* 80573DB4  48 00 00 40 */	b lbl_80573DF4
lbl_80573DB8:
/* 80573DB8  38 60 09 D8 */	li r3, 0x9d8
/* 80573DBC  48 00 00 38 */	b lbl_80573DF4
lbl_80573DC0:
/* 80573DC0  38 60 09 D4 */	li r3, 0x9d4
/* 80573DC4  48 00 00 30 */	b lbl_80573DF4
lbl_80573DC8:
/* 80573DC8  38 60 09 E2 */	li r3, 0x9e2
/* 80573DCC  48 00 00 28 */	b lbl_80573DF4
lbl_80573DD0:
/* 80573DD0  38 60 09 E4 */	li r3, 0x9e4
/* 80573DD4  48 00 00 20 */	b lbl_80573DF4
lbl_80573DD8:
/* 80573DD8  38 60 09 E3 */	li r3, 0x9e3
/* 80573DDC  48 00 00 18 */	b lbl_80573DF4
lbl_80573DE0:
/* 80573DE0  38 60 09 E5 */	li r3, 0x9e5
/* 80573DE4  48 00 00 10 */	b lbl_80573DF4
lbl_80573DE8:
/* 80573DE8  38 60 09 E6 */	li r3, 0x9e6
/* 80573DEC  48 00 00 08 */	b lbl_80573DF4
lbl_80573DF0:
/* 80573DF0  38 60 09 D4 */	li r3, 0x9d4
lbl_80573DF4:
/* 80573DF4  4B E2 47 21 */	bl mDemo_Set_msg_num
/* 80573DF8  38 60 00 01 */	li r3, 1
/* 80573DFC  4B E2 4B 25 */	bl mDemo_Set_camera
/* 80573E00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80573E04  7C 08 03 A6 */	mtlr r0
/* 80573E08  38 21 00 10 */	addi r1, r1, 0x10
/* 80573E0C  4E 80 00 20 */	blr 
