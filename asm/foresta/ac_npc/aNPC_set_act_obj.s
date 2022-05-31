lbl_80530D28:
/* 80530D28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80530D2C  7C 08 02 A6 */	mflr r0
/* 80530D30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80530D34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80530D38  7C 7F 1B 78 */	mr r31, r3
/* 80530D3C  7C 83 23 78 */	mr r3, r4
/* 80530D40  88 1F 07 FD */	lbz r0, 0x7fd(r31)
/* 80530D44  28 00 00 08 */	cmplwi r0, 8
/* 80530D48  41 81 00 DC */	bgt lbl_80530E24
/* 80530D4C  3C 80 80 6A */	lis r4, lit_2129@ha /* 0x806A248C@ha */
/* 80530D50  54 00 10 3A */	slwi r0, r0, 2
/* 80530D54  38 84 24 8C */	addi r4, r4, lit_2129@l /* 0x806A248C@l */
/* 80530D58  7C 04 00 2E */	lwzx r0, r4, r0
/* 80530D5C  7C 09 03 A6 */	mtctr r0
/* 80530D60  4E 80 04 20 */	bctr 
lbl_80530D64:
/* 80530D64  4B EA 88 DD */	bl get_player_actor_withoutCheck
/* 80530D68  90 7F 09 2C */	stw r3, 0x92c(r31)
/* 80530D6C  48 00 00 C0 */	b lbl_80530E2C
lbl_80530D70:
/* 80530D70  A0 9F 07 FE */	lhz r4, 0x7fe(r31)
/* 80530D74  38 63 1D A8 */	addi r3, r3, 0x1da8
/* 80530D78  38 A0 00 04 */	li r5, 4
/* 80530D7C  4B E4 4F C5 */	bl Actor_info_fgName_search
/* 80530D80  90 7F 09 2C */	stw r3, 0x92c(r31)
/* 80530D84  48 00 00 A8 */	b lbl_80530E2C
lbl_80530D88:
/* 80530D88  38 63 1D A8 */	addi r3, r3, 0x1da8
/* 80530D8C  38 80 00 09 */	li r4, 9
/* 80530D90  38 A0 00 05 */	li r5, 5
/* 80530D94  4B E4 4F 4D */	bl Actor_info_name_search
/* 80530D98  90 7F 09 2C */	stw r3, 0x92c(r31)
/* 80530D9C  48 00 00 90 */	b lbl_80530E2C
lbl_80530DA0:
/* 80530DA0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80530DA4  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80530DA8  3C 84 00 02 */	addis r4, r4, 2
/* 80530DAC  80 84 60 88 */	lwz r4, 0x6088(r4)
/* 80530DB0  28 04 00 00 */	cmplwi r4, 0
/* 80530DB4  41 82 00 20 */	beq lbl_80530DD4
/* 80530DB8  81 84 00 1C */	lwz r12, 0x1c(r4)
/* 80530DBC  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80530DC0  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 80530DC4  7D 89 03 A6 */	mtctr r12
/* 80530DC8  4E 80 04 21 */	bctrl 
/* 80530DCC  90 7F 09 2C */	stw r3, 0x92c(r31)
/* 80530DD0  48 00 00 5C */	b lbl_80530E2C
lbl_80530DD4:
/* 80530DD4  38 00 00 00 */	li r0, 0
/* 80530DD8  90 1F 09 2C */	stw r0, 0x92c(r31)
/* 80530DDC  48 00 00 50 */	b lbl_80530E2C
lbl_80530DE0:
/* 80530DE0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80530DE4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80530DE8  3C 63 00 02 */	addis r3, r3, 2
/* 80530DEC  80 63 60 B8 */	lwz r3, 0x60b8(r3)
/* 80530DF0  80 03 00 00 */	lwz r0, 0(r3)
/* 80530DF4  28 00 00 00 */	cmplwi r0, 0
/* 80530DF8  41 82 00 20 */	beq lbl_80530E18
/* 80530DFC  81 83 00 18 */	lwz r12, 0x18(r3)
/* 80530E00  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80530E04  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 80530E08  7D 89 03 A6 */	mtctr r12
/* 80530E0C  4E 80 04 21 */	bctrl 
/* 80530E10  90 7F 09 2C */	stw r3, 0x92c(r31)
/* 80530E14  48 00 00 18 */	b lbl_80530E2C
lbl_80530E18:
/* 80530E18  38 00 00 00 */	li r0, 0
/* 80530E1C  90 1F 09 2C */	stw r0, 0x92c(r31)
/* 80530E20  48 00 00 0C */	b lbl_80530E2C
lbl_80530E24:
/* 80530E24  38 00 00 00 */	li r0, 0
/* 80530E28  90 1F 09 2C */	stw r0, 0x92c(r31)
lbl_80530E2C:
/* 80530E2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80530E30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80530E34  7C 08 03 A6 */	mtlr r0
/* 80530E38  38 21 00 10 */	addi r1, r1, 0x10
/* 80530E3C  4E 80 00 20 */	blr 
