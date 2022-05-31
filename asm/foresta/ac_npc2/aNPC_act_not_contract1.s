lbl_80540D10:
/* 80540D10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80540D14  7C 08 02 A6 */	mflr r0
/* 80540D18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80540D1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80540D20  7C 7F 1B 78 */	mr r31, r3
/* 80540D24  80 03 01 94 */	lwz r0, 0x194(r3)
/* 80540D28  2C 00 00 12 */	cmpwi r0, 0x12
/* 80540D2C  41 80 00 60 */	blt lbl_80540D8C
/* 80540D30  80 1F 08 84 */	lwz r0, 0x884(r31)
/* 80540D34  28 00 00 00 */	cmplwi r0, 0
/* 80540D38  41 82 00 0C */	beq lbl_80540D44
/* 80540D3C  4B FF B9 9D */	bl aNPC_clear_left_hand_info
/* 80540D40  48 00 00 4C */	b lbl_80540D8C
lbl_80540D44:
/* 80540D44  80 1F 01 98 */	lwz r0, 0x198(r31)
/* 80540D48  2C 00 00 01 */	cmpwi r0, 1
/* 80540D4C  40 82 00 40 */	bne lbl_80540D8C
/* 80540D50  4B FF FC 95 */	bl aNPC_act_contract_return_contract
/* 80540D54  2C 03 00 01 */	cmpwi r3, 1
/* 80540D58  40 82 00 34 */	bne lbl_80540D8C
/* 80540D5C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80540D60  7F E3 FB 78 */	mr r3, r31
/* 80540D64  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 80540D68  38 80 00 0A */	li r4, 0xa
/* 80540D6C  3F E5 00 02 */	addis r31, r5, 2
/* 80540D70  80 BF 60 94 */	lwz r5, 0x6094(r31)
/* 80540D74  81 85 00 08 */	lwz r12, 8(r5)
/* 80540D78  7D 89 03 A6 */	mtctr r12
/* 80540D7C  4E 80 04 21 */	bctrl 
/* 80540D80  80 7F 60 94 */	lwz r3, 0x6094(r31)
/* 80540D84  38 00 00 07 */	li r0, 7
/* 80540D88  98 03 00 0D */	stb r0, 0xd(r3)
lbl_80540D8C:
/* 80540D8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80540D90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80540D94  7C 08 03 A6 */	mtlr r0
/* 80540D98  38 21 00 10 */	addi r1, r1, 0x10
/* 80540D9C  4E 80 00 20 */	blr 
