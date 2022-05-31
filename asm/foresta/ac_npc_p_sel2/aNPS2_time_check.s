lbl_8056779C:
/* 8056779C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805677A0  7C 08 02 A6 */	mflr r0
/* 805677A4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805677A8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805677AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 805677B0  3C 63 00 03 */	addis r3, r3, 3
/* 805677B4  88 03 88 3B */	lbz r0, -0x77c5(r3)
/* 805677B8  28 00 00 00 */	cmplwi r0, 0
/* 805677BC  41 82 00 98 */	beq lbl_80567854
/* 805677C0  38 61 00 10 */	addi r3, r1, 0x10
/* 805677C4  4B E9 EF 59 */	bl lbRTC_GetTime
/* 805677C8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805677CC  38 61 00 10 */	addi r3, r1, 0x10
/* 805677D0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805677D4  3C 84 00 03 */	addis r4, r4, 3
/* 805677D8  38 84 88 8C */	addi r4, r4, -30580
/* 805677DC  4B FF FD 91 */	bl aNPS2_Sub_Date
/* 805677E0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805677E4  38 61 00 08 */	addi r3, r1, 8
/* 805677E8  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 805677EC  38 81 00 10 */	addi r4, r1, 0x10
/* 805677F0  3C C5 00 03 */	addis r6, r5, 3
/* 805677F4  80 A6 88 84 */	lwz r5, -0x777c(r6)
/* 805677F8  80 06 88 88 */	lwz r0, -0x7778(r6)
/* 805677FC  90 A1 00 08 */	stw r5, 8(r1)
/* 80567800  90 01 00 0C */	stw r0, 0xc(r1)
/* 80567804  4B E9 F6 A9 */	bl lbRTC_Add_Date
/* 80567808  38 61 00 10 */	addi r3, r1, 0x10
/* 8056780C  4B E9 EF 11 */	bl lbRTC_GetTime
/* 80567810  38 61 00 10 */	addi r3, r1, 0x10
/* 80567814  38 81 00 08 */	addi r4, r1, 8
/* 80567818  4B E9 F0 FD */	bl lbRTC_IsOverTime
/* 8056781C  2C 03 FF FF */	cmpwi r3, -1
/* 80567820  40 82 00 18 */	bne lbl_80567838
/* 80567824  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80567828  38 00 00 01 */	li r0, 1
/* 8056782C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80567830  3C 63 00 02 */	addis r3, r3, 2
/* 80567834  98 03 0F 1B */	stb r0, 0xf1b(r3)
lbl_80567838:
/* 80567838  38 61 00 08 */	addi r3, r1, 8
/* 8056783C  4B E9 EE 41 */	bl lbRTC_SetTime
/* 80567840  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80567844  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80567848  3C 63 00 02 */	addis r3, r3, 2
/* 8056784C  38 63 61 20 */	addi r3, r3, 0x6120
/* 80567850  4B E9 EE CD */	bl lbRTC_GetTime
lbl_80567854:
/* 80567854  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80567858  7C 08 03 A6 */	mtlr r0
/* 8056785C  38 21 00 20 */	addi r1, r1, 0x20
/* 80567860  4E 80 00 20 */	blr 
