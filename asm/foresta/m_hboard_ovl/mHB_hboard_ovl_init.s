lbl_805E11E4:
/* 805E11E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805E11E8  7C 08 02 A6 */	mflr r0
/* 805E11EC  38 A0 00 00 */	li r5, 0
/* 805E11F0  39 20 00 02 */	li r9, 2
/* 805E11F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E11F8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805E11FC  38 04 85 38 */	addi r0, r4, common_data@l /* 0x81138538@l */
/* 805E1200  38 E0 00 05 */	li r7, 5
/* 805E1204  81 43 00 2C */	lwz r10, 0x2c(r3)
/* 805E1208  38 80 00 0A */	li r4, 0xa
/* 805E120C  38 C0 00 20 */	li r6, 0x20
/* 805E1210  39 00 00 C0 */	li r8, 0xc0
/* 805E1214  90 AA 09 3C */	stw r5, 0x93c(r10)
/* 805E1218  90 AA 00 E8 */	stw r5, 0xe8(r10)
/* 805E121C  38 A0 00 01 */	li r5, 1
/* 805E1220  91 2A 01 14 */	stw r9, 0x114(r10)
/* 805E1224  B0 EA 01 18 */	sth r7, 0x118(r10)
/* 805E1228  80 EA 01 20 */	lwz r7, 0x120(r10)
/* 805E122C  1C E7 26 B0 */	mulli r7, r7, 0x26b0
/* 805E1230  7C E0 3A 14 */	add r7, r0, r7
/* 805E1234  3C E7 00 01 */	addis r7, r7, 1
/* 805E1238  38 E7 C2 DC */	addi r7, r7, -15652
/* 805E123C  4B E0 E4 ED */	bl mSM_open_submenu_new2
/* 805E1240  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805E1244  7C 08 03 A6 */	mtlr r0
/* 805E1248  38 21 00 10 */	addi r1, r1, 0x10
/* 805E124C  4E 80 00 20 */	blr 
