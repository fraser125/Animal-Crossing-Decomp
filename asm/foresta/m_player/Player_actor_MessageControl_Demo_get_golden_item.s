lbl_805088A4:
/* 805088A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805088A8  7C 08 02 A6 */	mflr r0
/* 805088AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 805088B0  39 61 00 20 */	addi r11, r1, 0x20
/* 805088B4  4B B9 26 21 */	bl func_8009AED4
/* 805088B8  7C 7D 1B 78 */	mr r29, r3
/* 805088BC  7C 9E 23 78 */	mr r30, r4
/* 805088C0  3B FD 0D 1C */	addi r31, r29, 0xd1c
/* 805088C4  4B EB 6D E5 */	bl func_803BF6A8
/* 805088C8  3C 80 80 65 */	lis r4, lit_7320@ha /* 0x80648350@ha */
/* 805088CC  C0 3D 0D 18 */	lfs f1, 0xd18(r29)
/* 805088D0  C0 04 83 50 */	lfs f0, lit_7320@l(r4)  /* 0x80648350@l */
/* 805088D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805088D8  40 80 00 1C */	bge lbl_805088F4
/* 805088DC  3C 80 80 64 */	lis r4, lit_603@ha /* 0x80646564@ha */
/* 805088E0  38 60 00 00 */	li r3, 0
/* 805088E4  C0 04 65 64 */	lfs f0, lit_603@l(r4)  /* 0x80646564@l */
/* 805088E8  EC 01 00 2A */	fadds f0, f1, f0
/* 805088EC  D0 1D 0D 18 */	stfs f0, 0xd18(r29)
/* 805088F0  48 00 00 AC */	b lbl_8050899C
lbl_805088F4:
/* 805088F4  80 1F 00 00 */	lwz r0, 0(r31)
/* 805088F8  2C 00 00 01 */	cmpwi r0, 1
/* 805088FC  41 82 00 5C */	beq lbl_80508958
/* 80508900  40 80 00 10 */	bge lbl_80508910
/* 80508904  2C 00 00 00 */	cmpwi r0, 0
/* 80508908  40 80 00 14 */	bge lbl_8050891C
/* 8050890C  48 00 00 8C */	b lbl_80508998
lbl_80508910:
/* 80508910  2C 00 00 03 */	cmpwi r0, 3
/* 80508914  40 80 00 84 */	bge lbl_80508998
/* 80508918  48 00 00 5C */	b lbl_80508974
lbl_8050891C:
/* 8050891C  7F A4 EB 78 */	mr r4, r29
/* 80508920  38 60 00 09 */	li r3, 9
/* 80508924  4B E9 19 41 */	bl mDemo_Check
/* 80508928  2C 03 00 00 */	cmpwi r3, 0
/* 8050892C  40 82 00 1C */	bne lbl_80508948
/* 80508930  3C 60 80 51 */	lis r3, Player_actor_Demo_get_golden_item_demo_ct@ha /* 0x805087DC@ha */
/* 80508934  7F A4 EB 78 */	mr r4, r29
/* 80508938  38 A3 87 DC */	addi r5, r3, Player_actor_Demo_get_golden_item_demo_ct@l /* 0x805087DC@l */
/* 8050893C  38 60 00 09 */	li r3, 9
/* 80508940  4B E9 18 1D */	bl mDemo_Request
/* 80508944  48 00 00 0C */	b lbl_80508950
lbl_80508948:
/* 80508948  38 00 00 01 */	li r0, 1
/* 8050894C  90 1F 00 00 */	stw r0, 0(r31)
lbl_80508950:
/* 80508950  38 60 00 00 */	li r3, 0
/* 80508954  48 00 00 48 */	b lbl_8050899C
lbl_80508958:
/* 80508958  2C 1E 00 00 */	cmpwi r30, 0
/* 8050895C  41 82 00 10 */	beq lbl_8050896C
/* 80508960  4B EB 83 ED */	bl mMsg_Unset_LockContinue
/* 80508964  38 00 00 02 */	li r0, 2
/* 80508968  90 1F 00 00 */	stw r0, 0(r31)
lbl_8050896C:
/* 8050896C  38 60 00 00 */	li r3, 0
/* 80508970  48 00 00 2C */	b lbl_8050899C
lbl_80508974:
/* 80508974  7F A4 EB 78 */	mr r4, r29
/* 80508978  38 60 00 09 */	li r3, 9
/* 8050897C  4B E9 18 E9 */	bl mDemo_Check
/* 80508980  2C 03 00 00 */	cmpwi r3, 0
/* 80508984  40 82 00 0C */	bne lbl_80508990
/* 80508988  38 00 00 03 */	li r0, 3
/* 8050898C  90 1F 00 00 */	stw r0, 0(r31)
lbl_80508990:
/* 80508990  38 60 00 00 */	li r3, 0
/* 80508994  48 00 00 08 */	b lbl_8050899C
lbl_80508998:
/* 80508998  38 60 00 01 */	li r3, 1
lbl_8050899C:
/* 8050899C  39 61 00 20 */	addi r11, r1, 0x20
/* 805089A0  4B B9 25 81 */	bl func_8009AF20
/* 805089A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805089A8  7C 08 03 A6 */	mtlr r0
/* 805089AC  38 21 00 20 */	addi r1, r1, 0x20
/* 805089B0  4E 80 00 20 */	blr 
