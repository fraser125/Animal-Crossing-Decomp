lbl_8057D37C:
/* 8057D37C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057D380  7C 08 02 A6 */	mflr r0
/* 8057D384  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8057D388  38 A0 00 02 */	li r5, 2
/* 8057D38C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057D390  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8057D394  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057D398  3F E4 00 02 */	addis r31, r4, 2
/* 8057D39C  38 80 00 01 */	li r4, 1
/* 8057D3A0  93 C1 00 08 */	stw r30, 8(r1)
/* 8057D3A4  7C 7E 1B 78 */	mr r30, r3
/* 8057D3A8  38 60 00 04 */	li r3, 4
/* 8057D3AC  3B FF 04 5E */	addi r31, r31, 0x45e
/* 8057D3B0  4B E1 B0 89 */	bl mDemo_Set_OrderValue
/* 8057D3B4  A8 1E 09 AC */	lha r0, 0x9ac(r30)
/* 8057D3B8  38 60 00 05 */	li r3, 5
/* 8057D3BC  38 80 00 00 */	li r4, 0
/* 8057D3C0  54 00 08 3C */	slwi r0, r0, 1
/* 8057D3C4  7C BF 02 2E */	lhzx r5, r31, r0
/* 8057D3C8  4B E1 B0 71 */	bl mDemo_Set_OrderValue
/* 8057D3CC  38 60 00 05 */	li r3, 5
/* 8057D3D0  38 80 00 01 */	li r4, 1
/* 8057D3D4  38 A0 00 07 */	li r5, 7
/* 8057D3D8  4B E1 B0 61 */	bl mDemo_Set_OrderValue
/* 8057D3DC  38 60 00 05 */	li r3, 5
/* 8057D3E0  38 80 00 02 */	li r4, 2
/* 8057D3E4  38 A0 00 00 */	li r5, 0
/* 8057D3E8  4B E1 B0 51 */	bl mDemo_Set_OrderValue
/* 8057D3EC  A8 1E 09 AC */	lha r0, 0x9ac(r30)
/* 8057D3F0  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FE10@ha */
/* 8057D3F4  38 A3 FE 10 */	addi r5, r3, 0xFE10 /* 0x0000FE10@l */
/* 8057D3F8  7F C3 F3 78 */	mr r3, r30
/* 8057D3FC  54 00 08 3C */	slwi r0, r0, 1
/* 8057D400  38 80 00 03 */	li r4, 3
/* 8057D404  7C BF 03 2E */	sthx r5, r31, r0
/* 8057D408  48 00 01 A5 */	bl aSHM_change_talk_proc
/* 8057D40C  A8 9E 09 B0 */	lha r4, 0x9b0(r30)
/* 8057D410  7F C3 F3 78 */	mr r3, r30
/* 8057D414  38 04 00 01 */	addi r0, r4, 1
/* 8057D418  7C 04 07 34 */	extsh r4, r0
/* 8057D41C  4B FF F5 0D */	bl aSHM_set_start_avoid_pos
/* 8057D420  4B FF F7 8D */	bl check_null_lottery
/* 8057D424  2C 03 00 00 */	cmpwi r3, 0
/* 8057D428  40 82 00 14 */	bne lbl_8057D43C
/* 8057D42C  80 7E 09 B8 */	lwz r3, 0x9b8(r30)
/* 8057D430  4B FF F8 31 */	bl check_lottery_ticket
/* 8057D434  2C 03 00 00 */	cmpwi r3, 0
/* 8057D438  40 82 00 10 */	bne lbl_8057D448
lbl_8057D43C:
/* 8057D43C  38 00 00 0B */	li r0, 0xb
/* 8057D440  90 1E 09 9C */	stw r0, 0x99c(r30)
/* 8057D444  48 00 00 0C */	b lbl_8057D450
lbl_8057D448:
/* 8057D448  38 00 00 0C */	li r0, 0xc
/* 8057D44C  90 1E 09 9C */	stw r0, 0x99c(r30)
lbl_8057D450:
/* 8057D450  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057D454  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057D458  83 C1 00 08 */	lwz r30, 8(r1)
/* 8057D45C  7C 08 03 A6 */	mtlr r0
/* 8057D460  38 21 00 10 */	addi r1, r1, 0x10
/* 8057D464  4E 80 00 20 */	blr 
