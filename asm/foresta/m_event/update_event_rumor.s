lbl_8039C758:
/* 8039C758  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8039C75C  7C 08 02 A6 */	mflr r0
/* 8039C760  90 01 00 34 */	stw r0, 0x34(r1)
/* 8039C764  39 61 00 30 */	addi r11, r1, 0x30
/* 8039C768  4B CF E7 6D */	bl func_8009AED4
/* 8039C76C  7C 7D 1B 78 */	mr r29, r3
/* 8039C770  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8039C774  A8 1D 00 0A */	lha r0, 0xa(r29)
/* 8039C778  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8039C77C  3C 63 00 02 */	addis r3, r3, 2
/* 8039C780  2C 00 00 29 */	cmpwi r0, 0x29
/* 8039C784  41 82 01 44 */	beq lbl_8039C8C8
/* 8039C788  40 80 00 28 */	bge lbl_8039C7B0
/* 8039C78C  2C 00 00 1C */	cmpwi r0, 0x1c
/* 8039C790  41 82 00 68 */	beq lbl_8039C7F8
/* 8039C794  40 80 00 10 */	bge lbl_8039C7A4
/* 8039C798  2C 00 00 0A */	cmpwi r0, 0xa
/* 8039C79C  41 82 00 40 */	beq lbl_8039C7DC
/* 8039C7A0  48 00 01 28 */	b lbl_8039C8C8
lbl_8039C7A4:
/* 8039C7A4  2C 00 00 28 */	cmpwi r0, 0x28
/* 8039C7A8  40 80 00 CC */	bge lbl_8039C874
/* 8039C7AC  48 00 01 1C */	b lbl_8039C8C8
lbl_8039C7B0:
/* 8039C7B0  2C 00 00 36 */	cmpwi r0, 0x36
/* 8039C7B4  41 82 01 14 */	beq lbl_8039C8C8
/* 8039C7B8  40 80 00 18 */	bge lbl_8039C7D0
/* 8039C7BC  2C 00 00 35 */	cmpwi r0, 0x35
/* 8039C7C0  40 80 00 D0 */	bge lbl_8039C890
/* 8039C7C4  2C 00 00 2B */	cmpwi r0, 0x2b
/* 8039C7C8  40 80 01 00 */	bge lbl_8039C8C8
/* 8039C7CC  48 00 00 48 */	b lbl_8039C814
lbl_8039C7D0:
/* 8039C7D0  2C 00 00 38 */	cmpwi r0, 0x38
/* 8039C7D4  40 80 00 F4 */	bge lbl_8039C8C8
/* 8039C7D8  48 00 00 D4 */	b lbl_8039C8AC
lbl_8039C7DC:
/* 8039C7DC  A0 63 61 26 */	lhz r3, 0x6126(r3)
/* 8039C7E0  48 06 B0 E9 */	bl lbRk_VernalEquinoxDay
/* 8039C7E4  38 83 FF F6 */	addi r4, r3, -10
/* 8039C7E8  38 03 FF FF */	addi r0, r3, -1
/* 8039C7EC  98 9D 00 01 */	stb r4, 1(r29)
/* 8039C7F0  98 1D 00 05 */	stb r0, 5(r29)
/* 8039C7F4  48 00 00 D4 */	b lbl_8039C8C8
lbl_8039C7F8:
/* 8039C7F8  A0 63 61 26 */	lhz r3, 0x6126(r3)
/* 8039C7FC  38 80 00 06 */	li r4, 6
/* 8039C800  38 A0 00 06 */	li r5, 6
/* 8039C804  38 C0 00 00 */	li r6, 0
/* 8039C808  48 06 AB A5 */	bl lbRTC_Weekly_day
/* 8039C80C  98 7D 00 05 */	stb r3, 5(r29)
/* 8039C810  48 00 00 B8 */	b lbl_8039C8C8
lbl_8039C814:
/* 8039C814  A0 83 61 26 */	lhz r4, 0x6126(r3)
/* 8039C818  38 61 00 08 */	addi r3, r1, 8
/* 8039C81C  48 06 B1 75 */	bl lbRk_HarvestMoonDay
/* 8039C820  A0 C1 00 08 */	lhz r6, 8(r1)
/* 8039C824  38 61 00 0C */	addi r3, r1, 0xc
/* 8039C828  88 A1 00 0A */	lbz r5, 0xa(r1)
/* 8039C82C  38 80 00 01 */	li r4, 1
/* 8039C830  88 01 00 0B */	lbz r0, 0xb(r1)
/* 8039C834  B0 C1 00 12 */	sth r6, 0x12(r1)
/* 8039C838  98 A1 00 11 */	stb r5, 0x11(r1)
/* 8039C83C  98 01 00 0F */	stb r0, 0xf(r1)
/* 8039C840  48 06 A7 7D */	bl lbRTC_Sub_DD
/* 8039C844  8B C1 00 11 */	lbz r30, 0x11(r1)
/* 8039C848  38 61 00 0C */	addi r3, r1, 0xc
/* 8039C84C  8B E1 00 0F */	lbz r31, 0xf(r1)
/* 8039C850  38 80 00 06 */	li r4, 6
/* 8039C854  48 06 A7 69 */	bl lbRTC_Sub_DD
/* 8039C858  88 61 00 0F */	lbz r3, 0xf(r1)
/* 8039C85C  88 01 00 11 */	lbz r0, 0x11(r1)
/* 8039C860  98 1D 00 00 */	stb r0, 0(r29)
/* 8039C864  98 7D 00 01 */	stb r3, 1(r29)
/* 8039C868  9B DD 00 04 */	stb r30, 4(r29)
/* 8039C86C  9B FD 00 05 */	stb r31, 5(r29)
/* 8039C870  48 00 00 58 */	b lbl_8039C8C8
lbl_8039C874:
/* 8039C874  A0 63 61 26 */	lhz r3, 0x6126(r3)
/* 8039C878  48 06 B0 B5 */	bl lbRk_AutumnalEquinoxDay
/* 8039C87C  38 83 FF F6 */	addi r4, r3, -10
/* 8039C880  38 03 FF FF */	addi r0, r3, -1
/* 8039C884  98 9D 00 01 */	stb r4, 1(r29)
/* 8039C888  98 1D 00 05 */	stb r0, 5(r29)
/* 8039C88C  48 00 00 3C */	b lbl_8039C8C8
lbl_8039C890:
/* 8039C890  A0 63 61 26 */	lhz r3, 0x6126(r3)
/* 8039C894  38 80 00 0B */	li r4, 0xb
/* 8039C898  38 A0 00 06 */	li r5, 6
/* 8039C89C  38 C0 00 00 */	li r6, 0
/* 8039C8A0  48 06 AB 0D */	bl lbRTC_Weekly_day
/* 8039C8A4  98 7D 00 05 */	stb r3, 5(r29)
/* 8039C8A8  48 00 00 20 */	b lbl_8039C8C8
lbl_8039C8AC:
/* 8039C8AC  A0 63 61 26 */	lhz r3, 0x6126(r3)
/* 8039C8B0  38 80 00 0B */	li r4, 0xb
/* 8039C8B4  38 A0 00 04 */	li r5, 4
/* 8039C8B8  38 C0 00 04 */	li r6, 4
/* 8039C8BC  48 06 AA F1 */	bl lbRTC_Weekly_day
/* 8039C8C0  38 03 FF FF */	addi r0, r3, -1
/* 8039C8C4  98 1D 00 05 */	stb r0, 5(r29)
lbl_8039C8C8:
/* 8039C8C8  39 61 00 30 */	addi r11, r1, 0x30
/* 8039C8CC  4B CF E6 55 */	bl func_8009AF20
/* 8039C8D0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8039C8D4  7C 08 03 A6 */	mtlr r0
/* 8039C8D8  38 21 00 30 */	addi r1, r1, 0x30
/* 8039C8DC  4E 80 00 20 */	blr 
