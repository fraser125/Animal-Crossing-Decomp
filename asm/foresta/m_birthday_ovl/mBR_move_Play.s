lbl_805C46C4:
/* 805C46C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805C46C8  7C 08 02 A6 */	mflr r0
/* 805C46CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 805C46D0  39 61 00 20 */	addi r11, r1, 0x20
/* 805C46D4  4B AD 67 FD */	bl func_8009AED0
/* 805C46D8  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805C46DC  83 C5 09 28 */	lwz r30, 0x928(r5)
/* 805C46E0  83 E5 09 BC */	lwz r31, 0x9bc(r5)
/* 805C46E4  73 C0 40 02 */	andi. r0, r30, 0x4002
/* 805C46E8  41 82 00 24 */	beq lbl_805C470C
/* 805C46EC  80 7F 00 04 */	lwz r3, 4(r31)
/* 805C46F0  2C 03 00 00 */	cmpwi r3, 0
/* 805C46F4  41 82 01 64 */	beq lbl_805C4858
/* 805C46F8  38 03 FF FF */	addi r0, r3, -1
/* 805C46FC  38 60 10 03 */	li r3, 0x1003
/* 805C4700  90 1F 00 04 */	stw r0, 4(r31)
/* 805C4704  48 06 96 01 */	bl sAdo_SysTrgStart
/* 805C4708  48 00 01 50 */	b lbl_805C4858
lbl_805C470C:
/* 805C470C  57 C0 04 E7 */	rlwinm. r0, r30, 0, 0x13, 0x13
/* 805C4710  41 82 00 10 */	beq lbl_805C4720
/* 805C4714  7F E5 FB 78 */	mr r5, r31
/* 805C4718  4B FF FF 15 */	bl func_805C462C
/* 805C471C  48 00 01 3C */	b lbl_805C4858
lbl_805C4720:
/* 805C4720  73 C0 80 01 */	andi. r0, r30, 0x8001
/* 805C4724  41 82 00 38 */	beq lbl_805C475C
/* 805C4728  80 BF 00 04 */	lwz r5, 4(r31)
/* 805C472C  2C 05 00 02 */	cmpwi r5, 2
/* 805C4730  40 82 00 18 */	bne lbl_805C4748
/* 805C4734  57 C0 07 FF */	clrlwi. r0, r30, 0x1f
/* 805C4738  40 82 01 20 */	bne lbl_805C4858
/* 805C473C  7F E5 FB 78 */	mr r5, r31
/* 805C4740  4B FF FE ED */	bl func_805C462C
/* 805C4744  48 00 01 14 */	b lbl_805C4858
lbl_805C4748:
/* 805C4748  38 05 00 01 */	addi r0, r5, 1
/* 805C474C  38 60 00 0D */	li r3, 0xd
/* 805C4750  90 1F 00 04 */	stw r0, 4(r31)
/* 805C4754  48 06 95 B1 */	bl sAdo_SysTrgStart
/* 805C4758  48 00 01 00 */	b lbl_805C4858
lbl_805C475C:
/* 805C475C  57 C0 07 3B */	rlwinm. r0, r30, 0, 0x1c, 0x1d
/* 805C4760  41 82 00 F8 */	beq lbl_805C4858
/* 805C4764  80 1F 00 04 */	lwz r0, 4(r31)
/* 805C4768  2C 00 00 02 */	cmpwi r0, 2
/* 805C476C  41 82 00 EC */	beq lbl_805C4858
/* 805C4770  57 DC 07 7B */	rlwinm. r28, r30, 0, 0x1d, 0x1d
/* 805C4774  41 82 00 18 */	beq lbl_805C478C
/* 805C4778  54 04 08 3C */	slwi r4, r0, 1
/* 805C477C  7C 7F 22 2E */	lhzx r3, r31, r4
/* 805C4780  38 03 FF FF */	addi r0, r3, -1
/* 805C4784  7C 1F 23 2E */	sthx r0, r31, r4
/* 805C4788  48 00 00 14 */	b lbl_805C479C
lbl_805C478C:
/* 805C478C  54 04 08 3C */	slwi r4, r0, 1
/* 805C4790  7C 7F 22 2E */	lhzx r3, r31, r4
/* 805C4794  38 03 00 01 */	addi r0, r3, 1
/* 805C4798  7C 1F 23 2E */	sthx r0, r31, r4
lbl_805C479C:
/* 805C479C  3C 60 80 6C */	lis r3, data_806C7AE0@ha /* 0x806C7AE0@ha */
/* 805C47A0  A0 1F 00 02 */	lhz r0, 2(r31)
/* 805C47A4  3B A3 7A E0 */	addi r29, r3, data_806C7AE0@l /* 0x806C7AE0@l */
/* 805C47A8  98 1D 00 03 */	stb r0, 3(r29)
/* 805C47AC  7F A3 EB 78 */	mr r3, r29
/* 805C47B0  A0 1F 00 00 */	lhz r0, 0(r31)
/* 805C47B4  98 1D 00 05 */	stb r0, 5(r29)
/* 805C47B8  4B E4 2A 91 */	bl lbRTC_IsValidTime
/* 805C47BC  2C 03 00 00 */	cmpwi r3, 0
/* 805C47C0  40 82 00 90 */	bne lbl_805C4850
/* 805C47C4  80 7F 00 04 */	lwz r3, 4(r31)
/* 805C47C8  2C 03 00 00 */	cmpwi r3, 0
/* 805C47CC  40 82 00 18 */	bne lbl_805C47E4
/* 805C47D0  A0 1F 00 00 */	lhz r0, 0(r31)
/* 805C47D4  28 00 00 00 */	cmplwi r0, 0
/* 805C47D8  41 82 00 0C */	beq lbl_805C47E4
/* 805C47DC  28 00 00 0D */	cmplwi r0, 0xd
/* 805C47E0  41 80 00 14 */	blt lbl_805C47F4
lbl_805C47E4:
/* 805C47E4  28 1C 00 00 */	cmplwi r28, 0
/* 805C47E8  41 82 00 48 */	beq lbl_805C4830
/* 805C47EC  2C 03 00 01 */	cmpwi r3, 1
/* 805C47F0  40 82 00 40 */	bne lbl_805C4830
lbl_805C47F4:
/* 805C47F4  38 00 00 1F */	li r0, 0x1f
/* 805C47F8  3C 60 80 6C */	lis r3, data_806C7AE0@ha /* 0x806C7AE0@ha */
/* 805C47FC  98 1D 00 03 */	stb r0, 3(r29)
/* 805C4800  3B C3 7A E0 */	addi r30, r3, data_806C7AE0@l /* 0x806C7AE0@l */
/* 805C4804  48 00 00 10 */	b lbl_805C4814
lbl_805C4808:
/* 805C4808  88 7D 00 03 */	lbz r3, 3(r29)
/* 805C480C  38 03 FF FF */	addi r0, r3, -1
/* 805C4810  98 1D 00 03 */	stb r0, 3(r29)
lbl_805C4814:
/* 805C4814  7F C3 F3 78 */	mr r3, r30
/* 805C4818  4B E4 2A 31 */	bl lbRTC_IsValidTime
/* 805C481C  2C 03 00 00 */	cmpwi r3, 0
/* 805C4820  41 82 FF E8 */	beq lbl_805C4808
/* 805C4824  88 1D 00 03 */	lbz r0, 3(r29)
/* 805C4828  B0 1F 00 02 */	sth r0, 2(r31)
/* 805C482C  48 00 00 24 */	b lbl_805C4850
lbl_805C4830:
/* 805C4830  57 C0 07 39 */	rlwinm. r0, r30, 0, 0x1c, 0x1c
/* 805C4834  41 82 00 14 */	beq lbl_805C4848
/* 805C4838  54 60 08 3C */	slwi r0, r3, 1
/* 805C483C  38 60 00 01 */	li r3, 1
/* 805C4840  7C 7F 03 2E */	sthx r3, r31, r0
/* 805C4844  48 00 00 0C */	b lbl_805C4850
lbl_805C4848:
/* 805C4848  38 00 00 0C */	li r0, 0xc
/* 805C484C  B0 1F 00 00 */	sth r0, 0(r31)
lbl_805C4850:
/* 805C4850  38 60 00 01 */	li r3, 1
/* 805C4854  48 06 94 B1 */	bl sAdo_SysTrgStart
lbl_805C4858:
/* 805C4858  39 61 00 20 */	addi r11, r1, 0x20
/* 805C485C  4B AD 66 C1 */	bl func_8009AF1C
/* 805C4860  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805C4864  7C 08 03 A6 */	mtlr r0
/* 805C4868  38 21 00 20 */	addi r1, r1, 0x20
/* 805C486C  4E 80 00 20 */	blr 
