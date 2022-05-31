lbl_804D9C84:
/* 804D9C84  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804D9C88  7C 08 02 A6 */	mflr r0
/* 804D9C8C  90 01 00 34 */	stw r0, 0x34(r1)
/* 804D9C90  39 61 00 30 */	addi r11, r1, 0x30
/* 804D9C94  4B BC 12 41 */	bl func_8009AED4
/* 804D9C98  7C 7E 1B 78 */	mr r30, r3
/* 804D9C9C  7C 9F 23 78 */	mr r31, r4
/* 804D9CA0  80 83 0C F8 */	lwz r4, 0xcf8(r3)
/* 804D9CA4  38 00 00 00 */	li r0, 0
/* 804D9CA8  2C 04 00 00 */	cmpwi r4, 0
/* 804D9CAC  41 80 00 10 */	blt lbl_804D9CBC
/* 804D9CB0  2C 04 00 79 */	cmpwi r4, 0x79
/* 804D9CB4  40 80 00 08 */	bge lbl_804D9CBC
/* 804D9CB8  38 00 00 01 */	li r0, 1
lbl_804D9CBC:
/* 804D9CBC  2C 00 00 00 */	cmpwi r0, 0
/* 804D9CC0  41 82 00 CC */	beq lbl_804D9D8C
/* 804D9CC4  3C 60 80 64 */	lis r3, value_2778@ha /* 0x80646C58@ha */
/* 804D9CC8  38 63 6C 58 */	addi r3, r3, value_2778@l /* 0x80646C58@l */
/* 804D9CCC  7C 03 20 AE */	lbzx r0, r3, r4
/* 804D9CD0  7C 00 07 75 */	extsb. r0, r0
/* 804D9CD4  41 82 00 B8 */	beq lbl_804D9D8C
/* 804D9CD8  80 9E 10 F4 */	lwz r4, 0x10f4(r30)
/* 804D9CDC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804D9CE0  80 1E 10 F8 */	lwz r0, 0x10f8(r30)
/* 804D9CE4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804D9CE8  3F A3 00 02 */	addis r29, r3, 2
/* 804D9CEC  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 804D9CF0  90 81 00 14 */	stw r4, 0x14(r1)
/* 804D9CF4  7F E7 FB 78 */	mr r7, r31
/* 804D9CF8  80 DD 60 9C */	lwz r6, 0x609c(r29)
/* 804D9CFC  38 81 00 14 */	addi r4, r1, 0x14
/* 804D9D00  90 01 00 18 */	stw r0, 0x18(r1)
/* 804D9D04  39 03 FF FF */	addi r8, r3, 0xFFFF /* 0x0000FFFF@l */
/* 804D9D08  38 60 00 2C */	li r3, 0x2c
/* 804D9D0C  38 A0 00 02 */	li r5, 2
/* 804D9D10  80 1E 10 FC */	lwz r0, 0x10fc(r30)
/* 804D9D14  39 40 00 00 */	li r10, 0
/* 804D9D18  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804D9D1C  80 1E 00 98 */	lwz r0, 0x98(r30)
/* 804D9D20  81 86 00 00 */	lwz r12, 0(r6)
/* 804D9D24  54 00 AE BE */	rlwinm r0, r0, 0x15, 0x1a, 0x1f
/* 804D9D28  A8 DE 11 08 */	lha r6, 0x1108(r30)
/* 804D9D2C  7C 09 07 34 */	extsh r9, r0
/* 804D9D30  7D 89 03 A6 */	mtctr r12
/* 804D9D34  4E 80 04 21 */	bctrl 
/* 804D9D38  80 BE 10 E8 */	lwz r5, 0x10e8(r30)
/* 804D9D3C  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 804D9D40  80 1E 10 EC */	lwz r0, 0x10ec(r30)
/* 804D9D44  7F E7 FB 78 */	mr r7, r31
/* 804D9D48  80 DD 60 9C */	lwz r6, 0x609c(r29)
/* 804D9D4C  38 81 00 08 */	addi r4, r1, 8
/* 804D9D50  90 A1 00 08 */	stw r5, 8(r1)
/* 804D9D54  39 03 FF FF */	addi r8, r3, 0xFFFF /* 0x0000FFFF@l */
/* 804D9D58  38 60 00 2C */	li r3, 0x2c
/* 804D9D5C  38 A0 00 02 */	li r5, 2
/* 804D9D60  90 01 00 0C */	stw r0, 0xc(r1)
/* 804D9D64  39 40 00 00 */	li r10, 0
/* 804D9D68  80 1E 10 F0 */	lwz r0, 0x10f0(r30)
/* 804D9D6C  90 01 00 10 */	stw r0, 0x10(r1)
/* 804D9D70  80 1E 00 98 */	lwz r0, 0x98(r30)
/* 804D9D74  81 86 00 00 */	lwz r12, 0(r6)
/* 804D9D78  54 00 AE BE */	rlwinm r0, r0, 0x15, 0x1a, 0x1f
/* 804D9D7C  A8 DE 11 02 */	lha r6, 0x1102(r30)
/* 804D9D80  7C 09 07 34 */	extsh r9, r0
/* 804D9D84  7D 89 03 A6 */	mtctr r12
/* 804D9D88  4E 80 04 21 */	bctrl 
lbl_804D9D8C:
/* 804D9D8C  39 61 00 30 */	addi r11, r1, 0x30
/* 804D9D90  4B BC 11 91 */	bl func_8009AF20
/* 804D9D94  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804D9D98  7C 08 03 A6 */	mtlr r0
/* 804D9D9C  38 21 00 30 */	addi r1, r1, 0x30
/* 804D9DA0  4E 80 00 20 */	blr 
