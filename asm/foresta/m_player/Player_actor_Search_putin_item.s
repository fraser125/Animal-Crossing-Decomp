lbl_804DDB00:
/* 804DDB00  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804DDB04  7C 08 02 A6 */	mflr r0
/* 804DDB08  90 01 00 34 */	stw r0, 0x34(r1)
/* 804DDB0C  39 61 00 30 */	addi r11, r1, 0x30
/* 804DDB10  4B BB D3 C5 */	bl func_8009AED4
/* 804DDB14  3C C0 80 64 */	lis r6, lit_1374@ha /* 0x80646A2C@ha */
/* 804DDB18  7C 9E 23 78 */	mr r30, r4
/* 804DDB1C  C0 26 6A 2C */	lfs f1, lit_1374@l(r6)  /* 0x80646A2C@l */
/* 804DDB20  7C 7D 1B 78 */	mr r29, r3
/* 804DDB24  7C BF 2B 78 */	mr r31, r5
/* 804DDB28  38 81 00 08 */	addi r4, r1, 8
/* 804DDB2C  4B FF FB 81 */	bl Player_actor_Get_PickupHandPosition
/* 804DDB30  3C 80 80 64 */	lis r4, lit_4795@ha /* 0x80647BA4@ha */
/* 804DDB34  3C 60 80 64 */	lis r3, lit_3046@ha /* 0x80646E54@ha */
/* 804DDB38  38 A4 7B A4 */	addi r5, r4, lit_4795@l /* 0x80647BA4@l */
/* 804DDB3C  C0 43 6E 54 */	lfs f2, lit_3046@l(r3)  /* 0x80646E54@l */
/* 804DDB40  C0 25 00 00 */	lfs f1, 0(r5)
/* 804DDB44  7F C4 F3 78 */	mr r4, r30
/* 804DDB48  7F E5 FB 78 */	mr r5, r31
/* 804DDB4C  38 61 00 08 */	addi r3, r1, 8
/* 804DDB50  4B FF FE 15 */	bl Player_actor_CheckItem_fromPosition
/* 804DDB54  28 03 00 00 */	cmplwi r3, 0
/* 804DDB58  41 82 00 2C */	beq lbl_804DDB84
/* 804DDB5C  A0 83 00 00 */	lhz r4, 0(r3)
/* 804DDB60  38 00 00 00 */	li r0, 0
/* 804DDB64  28 04 09 00 */	cmplwi r4, 0x900
/* 804DDB68  41 80 00 10 */	blt lbl_804DDB78
/* 804DDB6C  28 04 09 20 */	cmplwi r4, 0x920
/* 804DDB70  41 81 00 08 */	bgt lbl_804DDB78
/* 804DDB74  38 00 00 01 */	li r0, 1
lbl_804DDB78:
/* 804DDB78  2C 00 00 00 */	cmpwi r0, 0
/* 804DDB7C  41 82 00 08 */	beq lbl_804DDB84
/* 804DDB80  48 00 00 88 */	b lbl_804DDC08
lbl_804DDB84:
/* 804DDB84  3C 80 80 64 */	lis r4, lit_2591@ha /* 0x80646C44@ha */
/* 804DDB88  7F A3 EB 78 */	mr r3, r29
/* 804DDB8C  38 A4 6C 44 */	addi r5, r4, lit_2591@l /* 0x80646C44@l */
/* 804DDB90  38 81 00 08 */	addi r4, r1, 8
/* 804DDB94  C0 25 00 00 */	lfs f1, 0(r5)
/* 804DDB98  4B FF FB 15 */	bl Player_actor_Get_PickupHandPosition
/* 804DDB9C  3C 80 80 64 */	lis r4, lit_4795@ha /* 0x80647BA4@ha */
/* 804DDBA0  3C 60 80 64 */	lis r3, lit_3046@ha /* 0x80646E54@ha */
/* 804DDBA4  38 A4 7B A4 */	addi r5, r4, lit_4795@l /* 0x80647BA4@l */
/* 804DDBA8  C0 43 6E 54 */	lfs f2, lit_3046@l(r3)  /* 0x80646E54@l */
/* 804DDBAC  C0 25 00 00 */	lfs f1, 0(r5)
/* 804DDBB0  7F C4 F3 78 */	mr r4, r30
/* 804DDBB4  7F E5 FB 78 */	mr r5, r31
/* 804DDBB8  38 61 00 08 */	addi r3, r1, 8
/* 804DDBBC  4B FF FD A9 */	bl Player_actor_CheckItem_fromPosition
/* 804DDBC0  28 03 00 00 */	cmplwi r3, 0
/* 804DDBC4  41 82 00 08 */	beq lbl_804DDBCC
/* 804DDBC8  48 00 00 40 */	b lbl_804DDC08
lbl_804DDBCC:
/* 804DDBCC  3C 80 80 64 */	lis r4, lit_1375@ha /* 0x80646A30@ha */
/* 804DDBD0  7F A3 EB 78 */	mr r3, r29
/* 804DDBD4  38 A4 6A 30 */	addi r5, r4, lit_1375@l /* 0x80646A30@l */
/* 804DDBD8  38 81 00 08 */	addi r4, r1, 8
/* 804DDBDC  C0 25 00 00 */	lfs f1, 0(r5)
/* 804DDBE0  4B FF FA CD */	bl Player_actor_Get_PickupHandPosition
/* 804DDBE4  3C 80 80 64 */	lis r4, lit_4795@ha /* 0x80647BA4@ha */
/* 804DDBE8  3C 60 80 64 */	lis r3, lit_3046@ha /* 0x80646E54@ha */
/* 804DDBEC  38 A4 7B A4 */	addi r5, r4, lit_4795@l /* 0x80647BA4@l */
/* 804DDBF0  C0 43 6E 54 */	lfs f2, lit_3046@l(r3)  /* 0x80646E54@l */
/* 804DDBF4  C0 25 00 00 */	lfs f1, 0(r5)
/* 804DDBF8  7F C4 F3 78 */	mr r4, r30
/* 804DDBFC  7F E5 FB 78 */	mr r5, r31
/* 804DDC00  38 61 00 08 */	addi r3, r1, 8
/* 804DDC04  4B FF FD 61 */	bl Player_actor_CheckItem_fromPosition
lbl_804DDC08:
/* 804DDC08  39 61 00 30 */	addi r11, r1, 0x30
/* 804DDC0C  4B BB D3 15 */	bl func_8009AF20
/* 804DDC10  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804DDC14  7C 08 03 A6 */	mtlr r0
/* 804DDC18  38 21 00 30 */	addi r1, r1, 0x30
/* 804DDC1C  4E 80 00 20 */	blr 
