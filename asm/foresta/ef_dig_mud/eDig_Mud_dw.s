lbl_80609CE8:
/* 80609CE8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80609CEC  7C 08 02 A6 */	mflr r0
/* 80609CF0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80609CF4  39 61 00 20 */	addi r11, r1, 0x20
/* 80609CF8  4B A9 11 D9 */	bl func_8009AED0
/* 80609CFC  7C 7C 1B 78 */	mr r28, r3
/* 80609D00  3C A0 80 6D */	lis r5, data_806D2120@ha /* 0x806D2120@ha */
/* 80609D04  A8 03 00 00 */	lha r0, 0(r3)
/* 80609D08  7C 83 23 78 */	mr r3, r4
/* 80609D0C  3B E5 21 20 */	addi r31, r5, data_806D2120@l /* 0x806D2120@l */
/* 80609D10  2C 00 00 12 */	cmpwi r0, 0x12
/* 80609D14  40 81 00 0C */	ble lbl_80609D20
/* 80609D18  3B C0 00 00 */	li r30, 0
/* 80609D1C  48 00 00 28 */	b lbl_80609D44
lbl_80609D20:
/* 80609D20  2C 00 00 0E */	cmpwi r0, 0xe
/* 80609D24  40 81 00 0C */	ble lbl_80609D30
/* 80609D28  3B C0 00 01 */	li r30, 1
/* 80609D2C  48 00 00 18 */	b lbl_80609D44
lbl_80609D30:
/* 80609D30  2C 00 00 0A */	cmpwi r0, 0xa
/* 80609D34  40 81 00 0C */	ble lbl_80609D40
/* 80609D38  3B C0 00 02 */	li r30, 2
/* 80609D3C  48 00 00 08 */	b lbl_80609D44
lbl_80609D40:
/* 80609D40  3B C0 00 03 */	li r30, 3
lbl_80609D44:
/* 80609D44  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80609D48  83 A3 00 00 */	lwz r29, 0(r3)
/* 80609D4C  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 80609D50  3C C5 00 02 */	addis r6, r5, 2
/* 80609D54  38 9C 00 10 */	addi r4, r28, 0x10
/* 80609D58  80 C6 60 9C */	lwz r6, 0x609c(r6)
/* 80609D5C  38 BC 00 34 */	addi r5, r28, 0x34
/* 80609D60  81 86 00 18 */	lwz r12, 0x18(r6)
/* 80609D64  7D 89 03 A6 */	mtctr r12
/* 80609D68  4E 80 04 21 */	bctrl 
/* 80609D6C  A8 1C 00 4E */	lha r0, 0x4e(r28)
/* 80609D70  2C 00 00 01 */	cmpwi r0, 1
/* 80609D74  40 82 00 50 */	bne lbl_80609DC4
/* 80609D78  81 1D 02 E0 */	lwz r8, 0x2e0(r29)
/* 80609D7C  3C 80 DB 06 */	lis r4, 0xDB06 /* 0xDB060020@ha */
/* 80609D80  3C 60 80 CB */	lis r3, ef_mogura01_00_modelT@ha /* 0x80CB1E00@ha */
/* 80609D84  57 C6 10 3A */	slwi r6, r30, 2
/* 80609D88  38 08 00 08 */	addi r0, r8, 8
/* 80609D8C  38 E4 00 20 */	addi r7, r4, 0x0020 /* 0xDB060020@l */
/* 80609D90  90 1D 02 E0 */	stw r0, 0x2e0(r29)
/* 80609D94  38 BF 00 20 */	addi r5, r31, 0x20
/* 80609D98  3C 80 DE 00 */	lis r4, 0xde00
/* 80609D9C  38 03 1E 00 */	addi r0, r3, ef_mogura01_00_modelT@l /* 0x80CB1E00@l */
/* 80609DA0  90 E8 00 00 */	stw r7, 0(r8)
/* 80609DA4  7C 65 30 2E */	lwzx r3, r5, r6
/* 80609DA8  90 68 00 04 */	stw r3, 4(r8)
/* 80609DAC  80 BD 02 E0 */	lwz r5, 0x2e0(r29)
/* 80609DB0  38 65 00 08 */	addi r3, r5, 8
/* 80609DB4  90 7D 02 E0 */	stw r3, 0x2e0(r29)
/* 80609DB8  90 85 00 00 */	stw r4, 0(r5)
/* 80609DBC  90 05 00 04 */	stw r0, 4(r5)
/* 80609DC0  48 00 00 AC */	b lbl_80609E6C
lbl_80609DC4:
/* 80609DC4  A8 1C 00 06 */	lha r0, 6(r28)
/* 80609DC8  2C 00 00 16 */	cmpwi r0, 0x16
/* 80609DCC  41 82 00 0C */	beq lbl_80609DD8
/* 80609DD0  2C 00 00 0B */	cmpwi r0, 0xb
/* 80609DD4  40 82 00 50 */	bne lbl_80609E24
lbl_80609DD8:
/* 80609DD8  81 1D 02 E0 */	lwz r8, 0x2e0(r29)
/* 80609DDC  3C 80 DB 06 */	lis r4, 0xDB06 /* 0xDB060020@ha */
/* 80609DE0  3C 60 80 CB */	lis r3, ef_anahori03_00_modelT@ha /* 0x80CB1B40@ha */
/* 80609DE4  57 C6 10 3A */	slwi r6, r30, 2
/* 80609DE8  38 08 00 08 */	addi r0, r8, 8
/* 80609DEC  38 E4 00 20 */	addi r7, r4, 0x0020 /* 0xDB060020@l */
/* 80609DF0  90 1D 02 E0 */	stw r0, 0x2e0(r29)
/* 80609DF4  38 BF 00 10 */	addi r5, r31, 0x10
/* 80609DF8  3C 80 DE 00 */	lis r4, 0xde00
/* 80609DFC  38 03 1B 40 */	addi r0, r3, ef_anahori03_00_modelT@l /* 0x80CB1B40@l */
/* 80609E00  90 E8 00 00 */	stw r7, 0(r8)
/* 80609E04  7C 65 30 2E */	lwzx r3, r5, r6
/* 80609E08  90 68 00 04 */	stw r3, 4(r8)
/* 80609E0C  80 BD 02 E0 */	lwz r5, 0x2e0(r29)
/* 80609E10  38 65 00 08 */	addi r3, r5, 8
/* 80609E14  90 7D 02 E0 */	stw r3, 0x2e0(r29)
/* 80609E18  90 85 00 00 */	stw r4, 0(r5)
/* 80609E1C  90 05 00 04 */	stw r0, 4(r5)
/* 80609E20  48 00 00 4C */	b lbl_80609E6C
lbl_80609E24:
/* 80609E24  81 1D 02 E0 */	lwz r8, 0x2e0(r29)
/* 80609E28  3C 80 DB 06 */	lis r4, 0xDB06 /* 0xDB060020@ha */
/* 80609E2C  3C 60 80 CB */	lis r3, ef_anahori02_00_modelT@ha /* 0x80CB1880@ha */
/* 80609E30  57 C6 10 3A */	slwi r6, r30, 2
/* 80609E34  38 08 00 08 */	addi r0, r8, 8
/* 80609E38  38 E4 00 20 */	addi r7, r4, 0x0020 /* 0xDB060020@l */
/* 80609E3C  90 1D 02 E0 */	stw r0, 0x2e0(r29)
/* 80609E40  38 BF 00 00 */	addi r5, r31, 0
/* 80609E44  3C 80 DE 00 */	lis r4, 0xde00
/* 80609E48  38 03 18 80 */	addi r0, r3, ef_anahori02_00_modelT@l /* 0x80CB1880@l */
/* 80609E4C  90 E8 00 00 */	stw r7, 0(r8)
/* 80609E50  7C 65 30 2E */	lwzx r3, r5, r6
/* 80609E54  90 68 00 04 */	stw r3, 4(r8)
/* 80609E58  80 BD 02 E0 */	lwz r5, 0x2e0(r29)
/* 80609E5C  38 65 00 08 */	addi r3, r5, 8
/* 80609E60  90 7D 02 E0 */	stw r3, 0x2e0(r29)
/* 80609E64  90 85 00 00 */	stw r4, 0(r5)
/* 80609E68  90 05 00 04 */	stw r0, 4(r5)
lbl_80609E6C:
/* 80609E6C  39 61 00 20 */	addi r11, r1, 0x20
/* 80609E70  4B A9 10 AD */	bl func_8009AF1C
/* 80609E74  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80609E78  7C 08 03 A6 */	mtlr r0
/* 80609E7C  38 21 00 20 */	addi r1, r1, 0x20
/* 80609E80  4E 80 00 20 */	blr 
