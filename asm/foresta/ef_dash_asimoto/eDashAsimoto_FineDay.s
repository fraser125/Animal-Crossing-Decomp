lbl_80608A38:
/* 80608A38  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 80608A3C  7C 08 02 A6 */	mflr r0
/* 80608A40  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 80608A44  39 61 00 D0 */	addi r11, r1, 0xd0
/* 80608A48  4B A9 24 7D */	bl func_8009AEC4
/* 80608A4C  7C 7D 1B 78 */	mr r29, r3
/* 80608A50  7C 9E 23 78 */	mr r30, r4
/* 80608A54  80 A3 00 10 */	lwz r5, 0x10(r3)
/* 80608A58  38 61 00 8C */	addi r3, r1, 0x8c
/* 80608A5C  80 1D 00 14 */	lwz r0, 0x14(r29)
/* 80608A60  38 81 00 80 */	addi r4, r1, 0x80
/* 80608A64  90 A1 00 80 */	stw r5, 0x80(r1)
/* 80608A68  90 01 00 84 */	stw r0, 0x84(r1)
/* 80608A6C  80 1D 00 18 */	lwz r0, 0x18(r29)
/* 80608A70  90 01 00 88 */	stw r0, 0x88(r1)
/* 80608A74  A8 BD 00 4C */	lha r5, 0x4c(r29)
/* 80608A78  4B FF FC 8D */	bl func_80608704
/* 80608A7C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80608A80  83 81 00 8C */	lwz r28, 0x8c(r1)
/* 80608A84  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80608A88  83 61 00 90 */	lwz r27, 0x90(r1)
/* 80608A8C  3F E3 00 02 */	addis r31, r3, 2
/* 80608A90  83 41 00 94 */	lwz r26, 0x94(r1)
/* 80608A94  80 1F 61 10 */	lwz r0, 0x6110(r31)
/* 80608A98  93 81 00 98 */	stw r28, 0x98(r1)
/* 80608A9C  2C 00 00 03 */	cmpwi r0, 3
/* 80608AA0  93 61 00 9C */	stw r27, 0x9c(r1)
/* 80608AA4  93 41 00 A0 */	stw r26, 0xa0(r1)
/* 80608AA8  41 82 00 08 */	beq lbl_80608AB0
/* 80608AAC  48 00 02 10 */	b lbl_80608CBC
lbl_80608AB0:
/* 80608AB0  A9 3D 00 06 */	lha r9, 6(r29)
/* 80608AB4  28 09 00 16 */	cmplwi r9, 0x16
/* 80608AB8  41 81 01 AC */	bgt lbl_80608C64
/* 80608ABC  3C 60 80 6D */	lis r3, lit_500@ha /* 0x806D2040@ha */
/* 80608AC0  55 20 10 3A */	slwi r0, r9, 2
/* 80608AC4  38 63 20 40 */	addi r3, r3, lit_500@l /* 0x806D2040@l */
/* 80608AC8  7C 03 00 2E */	lwzx r0, r3, r0
/* 80608ACC  7C 09 03 A6 */	mtctr r0
/* 80608AD0  4E 80 04 20 */	bctr 
lbl_80608AD4:
/* 80608AD4  80 9D 00 10 */	lwz r4, 0x10(r29)
/* 80608AD8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80608ADC  80 1D 00 14 */	lwz r0, 0x14(r29)
/* 80608AE0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80608AE4  3C 63 00 02 */	addis r3, r3, 2
/* 80608AE8  7F C7 F3 78 */	mr r7, r30
/* 80608AEC  90 81 00 74 */	stw r4, 0x74(r1)
/* 80608AF0  38 81 00 74 */	addi r4, r1, 0x74
/* 80608AF4  80 A3 60 9C */	lwz r5, 0x609c(r3)
/* 80608AF8  38 60 00 31 */	li r3, 0x31
/* 80608AFC  90 01 00 78 */	stw r0, 0x78(r1)
/* 80608B00  80 1D 00 18 */	lwz r0, 0x18(r29)
/* 80608B04  90 01 00 7C */	stw r0, 0x7c(r1)
/* 80608B08  81 85 00 00 */	lwz r12, 0(r5)
/* 80608B0C  88 BD 00 0E */	lbz r5, 0xe(r29)
/* 80608B10  A8 DD 00 4C */	lha r6, 0x4c(r29)
/* 80608B14  A1 1D 00 0C */	lhz r8, 0xc(r29)
/* 80608B18  A9 3D 00 06 */	lha r9, 6(r29)
/* 80608B1C  A9 5D 00 08 */	lha r10, 8(r29)
/* 80608B20  7D 89 03 A6 */	mtctr r12
/* 80608B24  4E 80 04 21 */	bctrl 
/* 80608B28  48 00 02 FC */	b lbl_80608E24
lbl_80608B2C:
/* 80608B2C  3B 20 00 02 */	li r25, 2
lbl_80608B30:
/* 80608B30  93 81 00 68 */	stw r28, 0x68(r1)
/* 80608B34  7F C7 F3 78 */	mr r7, r30
/* 80608B38  80 BF 60 9C */	lwz r5, 0x609c(r31)
/* 80608B3C  38 81 00 68 */	addi r4, r1, 0x68
/* 80608B40  93 61 00 6C */	stw r27, 0x6c(r1)
/* 80608B44  38 60 00 33 */	li r3, 0x33
/* 80608B48  39 40 00 01 */	li r10, 1
/* 80608B4C  93 41 00 70 */	stw r26, 0x70(r1)
/* 80608B50  81 85 00 00 */	lwz r12, 0(r5)
/* 80608B54  88 BD 00 0E */	lbz r5, 0xe(r29)
/* 80608B58  A8 DD 00 4C */	lha r6, 0x4c(r29)
/* 80608B5C  A1 1D 00 0C */	lhz r8, 0xc(r29)
/* 80608B60  A9 3D 00 06 */	lha r9, 6(r29)
/* 80608B64  7D 89 03 A6 */	mtctr r12
/* 80608B68  4E 80 04 21 */	bctrl 
/* 80608B6C  2C 19 00 00 */	cmpwi r25, 0
/* 80608B70  3B 39 FF FF */	addi r25, r25, -1
/* 80608B74  40 82 FF BC */	bne lbl_80608B30
/* 80608B78  83 41 00 98 */	lwz r26, 0x98(r1)
/* 80608B7C  3B 20 00 02 */	li r25, 2
/* 80608B80  83 61 00 9C */	lwz r27, 0x9c(r1)
/* 80608B84  83 81 00 A0 */	lwz r28, 0xa0(r1)
lbl_80608B88:
/* 80608B88  93 41 00 5C */	stw r26, 0x5c(r1)
/* 80608B8C  7F C7 F3 78 */	mr r7, r30
/* 80608B90  80 BF 60 9C */	lwz r5, 0x609c(r31)
/* 80608B94  38 81 00 5C */	addi r4, r1, 0x5c
/* 80608B98  93 61 00 60 */	stw r27, 0x60(r1)
/* 80608B9C  38 60 00 34 */	li r3, 0x34
/* 80608BA0  39 40 00 00 */	li r10, 0
/* 80608BA4  93 81 00 64 */	stw r28, 0x64(r1)
/* 80608BA8  81 85 00 00 */	lwz r12, 0(r5)
/* 80608BAC  88 BD 00 0E */	lbz r5, 0xe(r29)
/* 80608BB0  A8 DD 00 4C */	lha r6, 0x4c(r29)
/* 80608BB4  A1 1D 00 0C */	lhz r8, 0xc(r29)
/* 80608BB8  A9 3D 00 06 */	lha r9, 6(r29)
/* 80608BBC  7D 89 03 A6 */	mtctr r12
/* 80608BC0  4E 80 04 21 */	bctrl 
/* 80608BC4  2C 19 00 00 */	cmpwi r25, 0
/* 80608BC8  3B 39 FF FF */	addi r25, r25, -1
/* 80608BCC  40 82 FF BC */	bne lbl_80608B88
/* 80608BD0  48 00 02 54 */	b lbl_80608E24
lbl_80608BD4:
/* 80608BD4  80 7D 00 10 */	lwz r3, 0x10(r29)
/* 80608BD8  7F C7 F3 78 */	mr r7, r30
/* 80608BDC  80 1D 00 14 */	lwz r0, 0x14(r29)
/* 80608BE0  38 81 00 50 */	addi r4, r1, 0x50
/* 80608BE4  80 BF 60 9C */	lwz r5, 0x609c(r31)
/* 80608BE8  39 40 00 00 */	li r10, 0
/* 80608BEC  90 61 00 50 */	stw r3, 0x50(r1)
/* 80608BF0  38 60 00 4C */	li r3, 0x4c
/* 80608BF4  90 01 00 54 */	stw r0, 0x54(r1)
/* 80608BF8  80 1D 00 18 */	lwz r0, 0x18(r29)
/* 80608BFC  90 01 00 58 */	stw r0, 0x58(r1)
/* 80608C00  81 85 00 00 */	lwz r12, 0(r5)
/* 80608C04  88 BD 00 0E */	lbz r5, 0xe(r29)
/* 80608C08  A8 DD 00 4C */	lha r6, 0x4c(r29)
/* 80608C0C  A1 1D 00 0C */	lhz r8, 0xc(r29)
/* 80608C10  7D 89 03 A6 */	mtctr r12
/* 80608C14  4E 80 04 21 */	bctrl 
/* 80608C18  48 00 02 0C */	b lbl_80608E24
lbl_80608C1C:
/* 80608C1C  80 7D 00 10 */	lwz r3, 0x10(r29)
/* 80608C20  7F C7 F3 78 */	mr r7, r30
/* 80608C24  80 1D 00 14 */	lwz r0, 0x14(r29)
/* 80608C28  38 81 00 44 */	addi r4, r1, 0x44
/* 80608C2C  80 BF 60 9C */	lwz r5, 0x609c(r31)
/* 80608C30  39 40 00 01 */	li r10, 1
/* 80608C34  90 61 00 44 */	stw r3, 0x44(r1)
/* 80608C38  38 60 00 05 */	li r3, 5
/* 80608C3C  90 01 00 48 */	stw r0, 0x48(r1)
/* 80608C40  80 1D 00 18 */	lwz r0, 0x18(r29)
/* 80608C44  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80608C48  81 85 00 00 */	lwz r12, 0(r5)
/* 80608C4C  88 BD 00 0E */	lbz r5, 0xe(r29)
/* 80608C50  A8 DD 00 4C */	lha r6, 0x4c(r29)
/* 80608C54  A1 1D 00 0C */	lhz r8, 0xc(r29)
/* 80608C58  7D 89 03 A6 */	mtctr r12
/* 80608C5C  4E 80 04 21 */	bctrl 
/* 80608C60  48 00 01 C4 */	b lbl_80608E24
lbl_80608C64:
/* 80608C64  80 9D 00 10 */	lwz r4, 0x10(r29)
/* 80608C68  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80608C6C  80 1D 00 14 */	lwz r0, 0x14(r29)
/* 80608C70  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80608C74  3C 63 00 02 */	addis r3, r3, 2
/* 80608C78  7F C7 F3 78 */	mr r7, r30
/* 80608C7C  90 81 00 38 */	stw r4, 0x38(r1)
/* 80608C80  38 81 00 38 */	addi r4, r1, 0x38
/* 80608C84  80 A3 60 9C */	lwz r5, 0x609c(r3)
/* 80608C88  38 60 00 01 */	li r3, 1
/* 80608C8C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80608C90  39 40 00 08 */	li r10, 8
/* 80608C94  80 1D 00 18 */	lwz r0, 0x18(r29)
/* 80608C98  90 01 00 40 */	stw r0, 0x40(r1)
/* 80608C9C  81 85 00 00 */	lwz r12, 0(r5)
/* 80608CA0  88 BD 00 0E */	lbz r5, 0xe(r29)
/* 80608CA4  A8 DD 00 4C */	lha r6, 0x4c(r29)
/* 80608CA8  A1 1D 00 0C */	lhz r8, 0xc(r29)
/* 80608CAC  A9 3D 00 06 */	lha r9, 6(r29)
/* 80608CB0  7D 89 03 A6 */	mtctr r12
/* 80608CB4  4E 80 04 21 */	bctrl 
/* 80608CB8  48 00 01 6C */	b lbl_80608E24
lbl_80608CBC:
/* 80608CBC  A9 3D 00 06 */	lha r9, 6(r29)
/* 80608CC0  2C 09 00 0B */	cmpwi r9, 0xb
/* 80608CC4  41 82 00 C4 */	beq lbl_80608D88
/* 80608CC8  40 80 00 1C */	bge lbl_80608CE4
/* 80608CCC  2C 09 00 09 */	cmpwi r9, 9
/* 80608CD0  41 82 00 20 */	beq lbl_80608CF0
/* 80608CD4  40 80 00 FC */	bge lbl_80608DD0
/* 80608CD8  2C 09 00 08 */	cmpwi r9, 8
/* 80608CDC  40 80 01 48 */	bge lbl_80608E24
/* 80608CE0  48 00 00 F0 */	b lbl_80608DD0
lbl_80608CE4:
/* 80608CE4  2C 09 00 16 */	cmpwi r9, 0x16
/* 80608CE8  41 82 00 58 */	beq lbl_80608D40
/* 80608CEC  48 00 00 E4 */	b lbl_80608DD0
lbl_80608CF0:
/* 80608CF0  3B 20 00 02 */	li r25, 2
lbl_80608CF4:
/* 80608CF4  93 81 00 2C */	stw r28, 0x2c(r1)
/* 80608CF8  7F C7 F3 78 */	mr r7, r30
/* 80608CFC  80 BF 60 9C */	lwz r5, 0x609c(r31)
/* 80608D00  38 81 00 2C */	addi r4, r1, 0x2c
/* 80608D04  93 61 00 30 */	stw r27, 0x30(r1)
/* 80608D08  38 60 00 33 */	li r3, 0x33
/* 80608D0C  39 40 00 01 */	li r10, 1
/* 80608D10  93 41 00 34 */	stw r26, 0x34(r1)
/* 80608D14  81 85 00 00 */	lwz r12, 0(r5)
/* 80608D18  88 BD 00 0E */	lbz r5, 0xe(r29)
/* 80608D1C  A8 DD 00 4C */	lha r6, 0x4c(r29)
/* 80608D20  A1 1D 00 0C */	lhz r8, 0xc(r29)
/* 80608D24  A9 3D 00 06 */	lha r9, 6(r29)
/* 80608D28  7D 89 03 A6 */	mtctr r12
/* 80608D2C  4E 80 04 21 */	bctrl 
/* 80608D30  2C 19 00 00 */	cmpwi r25, 0
/* 80608D34  3B 39 FF FF */	addi r25, r25, -1
/* 80608D38  40 82 FF BC */	bne lbl_80608CF4
/* 80608D3C  48 00 00 E8 */	b lbl_80608E24
lbl_80608D40:
/* 80608D40  80 7D 00 10 */	lwz r3, 0x10(r29)
/* 80608D44  7F C7 F3 78 */	mr r7, r30
/* 80608D48  80 1D 00 14 */	lwz r0, 0x14(r29)
/* 80608D4C  38 81 00 20 */	addi r4, r1, 0x20
/* 80608D50  80 BF 60 9C */	lwz r5, 0x609c(r31)
/* 80608D54  39 40 00 00 */	li r10, 0
/* 80608D58  90 61 00 20 */	stw r3, 0x20(r1)
/* 80608D5C  38 60 00 4C */	li r3, 0x4c
/* 80608D60  90 01 00 24 */	stw r0, 0x24(r1)
/* 80608D64  80 1D 00 18 */	lwz r0, 0x18(r29)
/* 80608D68  90 01 00 28 */	stw r0, 0x28(r1)
/* 80608D6C  81 85 00 00 */	lwz r12, 0(r5)
/* 80608D70  88 BD 00 0E */	lbz r5, 0xe(r29)
/* 80608D74  A8 DD 00 4C */	lha r6, 0x4c(r29)
/* 80608D78  A1 1D 00 0C */	lhz r8, 0xc(r29)
/* 80608D7C  7D 89 03 A6 */	mtctr r12
/* 80608D80  4E 80 04 21 */	bctrl 
/* 80608D84  48 00 00 A0 */	b lbl_80608E24
lbl_80608D88:
/* 80608D88  80 7D 00 10 */	lwz r3, 0x10(r29)
/* 80608D8C  7F C7 F3 78 */	mr r7, r30
/* 80608D90  80 1D 00 14 */	lwz r0, 0x14(r29)
/* 80608D94  38 81 00 14 */	addi r4, r1, 0x14
/* 80608D98  80 BF 60 9C */	lwz r5, 0x609c(r31)
/* 80608D9C  39 40 00 01 */	li r10, 1
/* 80608DA0  90 61 00 14 */	stw r3, 0x14(r1)
/* 80608DA4  38 60 00 05 */	li r3, 5
/* 80608DA8  90 01 00 18 */	stw r0, 0x18(r1)
/* 80608DAC  80 1D 00 18 */	lwz r0, 0x18(r29)
/* 80608DB0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80608DB4  81 85 00 00 */	lwz r12, 0(r5)
/* 80608DB8  88 BD 00 0E */	lbz r5, 0xe(r29)
/* 80608DBC  A8 DD 00 4C */	lha r6, 0x4c(r29)
/* 80608DC0  A1 1D 00 0C */	lhz r8, 0xc(r29)
/* 80608DC4  7D 89 03 A6 */	mtctr r12
/* 80608DC8  4E 80 04 21 */	bctrl 
/* 80608DCC  48 00 00 58 */	b lbl_80608E24
lbl_80608DD0:
/* 80608DD0  80 9D 00 10 */	lwz r4, 0x10(r29)
/* 80608DD4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80608DD8  80 1D 00 14 */	lwz r0, 0x14(r29)
/* 80608DDC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80608DE0  3C 63 00 02 */	addis r3, r3, 2
/* 80608DE4  7F C7 F3 78 */	mr r7, r30
/* 80608DE8  90 81 00 08 */	stw r4, 8(r1)
/* 80608DEC  38 81 00 08 */	addi r4, r1, 8
/* 80608DF0  80 A3 60 9C */	lwz r5, 0x609c(r3)
/* 80608DF4  38 60 00 01 */	li r3, 1
/* 80608DF8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80608DFC  39 40 00 08 */	li r10, 8
/* 80608E00  80 1D 00 18 */	lwz r0, 0x18(r29)
/* 80608E04  90 01 00 10 */	stw r0, 0x10(r1)
/* 80608E08  81 85 00 00 */	lwz r12, 0(r5)
/* 80608E0C  88 BD 00 0E */	lbz r5, 0xe(r29)
/* 80608E10  A8 DD 00 4C */	lha r6, 0x4c(r29)
/* 80608E14  A1 1D 00 0C */	lhz r8, 0xc(r29)
/* 80608E18  A9 3D 00 06 */	lha r9, 6(r29)
/* 80608E1C  7D 89 03 A6 */	mtctr r12
/* 80608E20  4E 80 04 21 */	bctrl 
lbl_80608E24:
/* 80608E24  39 61 00 D0 */	addi r11, r1, 0xd0
/* 80608E28  4B A9 20 E9 */	bl func_8009AF10
/* 80608E2C  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80608E30  7C 08 03 A6 */	mtlr r0
/* 80608E34  38 21 00 D0 */	addi r1, r1, 0xd0
/* 80608E38  4E 80 00 20 */	blr 
