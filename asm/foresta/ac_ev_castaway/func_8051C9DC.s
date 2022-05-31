lbl_8051C9DC:
/* 8051C9DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8051C9E0  7C 08 02 A6 */	mflr r0
/* 8051C9E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8051C9E8  39 61 00 20 */	addi r11, r1, 0x20
/* 8051C9EC  4B B7 E4 E9 */	bl func_8009AED4
/* 8051C9F0  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8051C9F4  7C 7F 1B 78 */	mr r31, r3
/* 8051C9F8  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8051C9FC  7C 9D 23 78 */	mr r29, r4
/* 8051CA00  3F C5 00 02 */	addis r30, r5, 2
/* 8051CA04  80 BE 60 4C */	lwz r5, 0x604c(r30)
/* 8051CA08  81 85 00 CC */	lwz r12, 0xcc(r5)
/* 8051CA0C  7D 89 03 A6 */	mtctr r12
/* 8051CA10  4E 80 04 21 */	bctrl 
/* 8051CA14  2C 03 00 01 */	cmpwi r3, 1
/* 8051CA18  40 82 00 C4 */	bne lbl_8051CADC
/* 8051CA1C  3C 60 80 52 */	lis r3, aECST_schedule_proc@ha /* 0x8051CBE8@ha */
/* 8051CA20  3C 80 80 6A */	lis r4, ct_data@ha /* 0x806A02C4@ha */
/* 8051CA24  38 03 CB E8 */	addi r0, r3, aECST_schedule_proc@l /* 0x8051CBE8@l */
/* 8051CA28  90 1F 07 F0 */	stw r0, 0x7f0(r31)
/* 8051CA2C  38 A4 02 C4 */	addi r5, r4, ct_data@l /* 0x806A02C4@l */
/* 8051CA30  7F E3 FB 78 */	mr r3, r31
/* 8051CA34  7F A4 EB 78 */	mr r4, r29
/* 8051CA38  80 DE 60 4C */	lwz r6, 0x604c(r30)
/* 8051CA3C  81 86 00 D0 */	lwz r12, 0xd0(r6)
/* 8051CA40  7D 89 03 A6 */	mtctr r12
/* 8051CA44  4E 80 04 21 */	bctrl 
/* 8051CA48  38 00 FF FB */	li r0, -5
/* 8051CA4C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8051CA50  90 1F 08 40 */	stw r0, 0x840(r31)
/* 8051CA54  38 A3 85 38 */	addi r5, r3, common_data@l /* 0x81138538@l */
/* 8051CA58  38 00 00 00 */	li r0, 0
/* 8051CA5C  3C 60 80 65 */	lis r3, data_806490C4@ha /* 0x806490C4@ha */
/* 8051CA60  98 1F 08 31 */	stb r0, 0x831(r31)
/* 8051CA64  38 83 90 C4 */	addi r4, r3, data_806490C4@l /* 0x806490C4@l */
/* 8051CA68  38 00 FF FF */	li r0, -1
/* 8051CA6C  3C E5 00 03 */	addis r7, r5, 3
/* 8051CA70  90 1F 08 F4 */	stw r0, 0x8f4(r31)
/* 8051CA74  3C 60 80 6A */	lis r3, def_pos@ha /* 0x806A02E0@ha */
/* 8051CA78  C0 04 00 00 */	lfs f0, 0(r4)
/* 8051CA7C  38 83 02 E0 */	addi r4, r3, def_pos@l /* 0x806A02E0@l */
/* 8051CA80  88 C7 88 7F */	lbz r6, -0x7781(r7)
/* 8051CA84  38 A0 00 FE */	li r5, 0xfe
/* 8051CA88  38 00 30 60 */	li r0, 0x3060
/* 8051CA8C  60 C3 00 10 */	ori r3, r6, 0x10
/* 8051CA90  98 67 88 7F */	stb r3, -0x7781(r7)
/* 8051CA94  98 BF 00 D6 */	stb r5, 0xd6(r31)
/* 8051CA98  D0 1F 00 78 */	stfs f0, 0x78(r31)
/* 8051CA9C  D0 1F 00 7C */	stfs f0, 0x7c(r31)
/* 8051CAA0  B0 1F 00 DE */	sth r0, 0xde(r31)
/* 8051CAA4  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 8051CAA8  B0 1F 09 24 */	sth r0, 0x924(r31)
/* 8051CAAC  80 64 00 00 */	lwz r3, 0(r4)
/* 8051CAB0  80 04 00 04 */	lwz r0, 4(r4)
/* 8051CAB4  90 7F 00 28 */	stw r3, 0x28(r31)
/* 8051CAB8  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 8051CABC  80 04 00 08 */	lwz r0, 8(r4)
/* 8051CAC0  90 1F 00 30 */	stw r0, 0x30(r31)
/* 8051CAC4  80 64 00 00 */	lwz r3, 0(r4)
/* 8051CAC8  80 04 00 04 */	lwz r0, 4(r4)
/* 8051CACC  90 7F 00 0C */	stw r3, 0xc(r31)
/* 8051CAD0  90 1F 00 10 */	stw r0, 0x10(r31)
/* 8051CAD4  80 04 00 08 */	lwz r0, 8(r4)
/* 8051CAD8  90 1F 00 14 */	stw r0, 0x14(r31)
lbl_8051CADC:
/* 8051CADC  39 61 00 20 */	addi r11, r1, 0x20
/* 8051CAE0  4B B7 E4 41 */	bl func_8009AF20
/* 8051CAE4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8051CAE8  7C 08 03 A6 */	mtlr r0
/* 8051CAEC  38 21 00 20 */	addi r1, r1, 0x20
/* 8051CAF0  4E 80 00 20 */	blr 
