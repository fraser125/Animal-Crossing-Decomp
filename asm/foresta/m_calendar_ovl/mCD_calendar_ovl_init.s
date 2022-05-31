lbl_805C80D8:
/* 805C80D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805C80DC  7C 08 02 A6 */	mflr r0
/* 805C80E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805C80E4  39 61 00 20 */	addi r11, r1, 0x20
/* 805C80E8  4B AD 2D ED */	bl func_8009AED4
/* 805C80EC  7C 7D 1B 78 */	mr r29, r3
/* 805C80F0  38 60 01 7C */	li r3, 0x17c
/* 805C80F4  83 FD 00 2C */	lwz r31, 0x2c(r29)
/* 805C80F8  83 DF 09 EC */	lwz r30, 0x9ec(r31)
/* 805C80FC  48 06 5C 09 */	bl sAdo_SysTrgStart
/* 805C8100  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 805C8104  38 E0 00 00 */	li r7, 0
/* 805C8108  38 C0 00 01 */	li r6, 1
/* 805C810C  38 00 00 05 */	li r0, 5
/* 805C8110  90 E3 09 3C */	stw r7, 0x93c(r3)
/* 805C8114  7F C3 F3 78 */	mr r3, r30
/* 805C8118  38 80 10 60 */	li r4, 0x1060
/* 805C811C  38 A0 00 00 */	li r5, 0
/* 805C8120  90 FF 08 38 */	stw r7, 0x838(r31)
/* 805C8124  90 DF 08 64 */	stw r6, 0x864(r31)
/* 805C8128  B0 1F 08 68 */	sth r0, 0x868(r31)
/* 805C812C  83 FD 00 14 */	lwz r31, 0x14(r29)
/* 805C8130  4B DF 29 19 */	bl mem_clear
/* 805C8134  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805C8138  7F E3 FB 78 */	mr r3, r31
/* 805C813C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805C8140  3C C4 00 02 */	addis r6, r4, 2
/* 805C8144  A0 86 61 26 */	lhz r4, 0x6126(r6)
/* 805C8148  88 A6 61 25 */	lbz r5, 0x6125(r6)
/* 805C814C  88 C6 61 23 */	lbz r6, 0x6123(r6)
/* 805C8150  4B DB 53 A1 */	bl mCD_calendar_check_delete
/* 805C8154  4B DB 54 75 */	bl mCD_calendar_wellcome_on
/* 805C8158  7F C3 F3 78 */	mr r3, r30
/* 805C815C  7F E4 FB 78 */	mr r4, r31
/* 805C8160  4B FF F1 0D */	bl mCD_make_calendar_data
/* 805C8164  3C 60 80 65 */	lis r3, lit_538@ha /* 0x8064AE40@ha */
/* 805C8168  38 00 00 00 */	li r0, 0
/* 805C816C  38 83 AE 40 */	addi r4, r3, lit_538@l /* 0x8064AE40@l */
/* 805C8170  98 1E 10 55 */	stb r0, 0x1055(r30)
/* 805C8174  C0 24 00 00 */	lfs f1, 0(r4)
/* 805C8178  3C 60 80 65 */	lis r3, lit_805@ha /* 0x8064AE50@ha */
/* 805C817C  C0 03 AE 50 */	lfs f0, lit_805@l(r3)  /* 0x8064AE50@l */
/* 805C8180  39 61 00 20 */	addi r11, r1, 0x20
/* 805C8184  D0 3E 10 2C */	stfs f1, 0x102c(r30)
/* 805C8188  D0 1E 10 30 */	stfs f0, 0x1030(r30)
/* 805C818C  4B AD 2D 95 */	bl func_8009AF20
/* 805C8190  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805C8194  7C 08 03 A6 */	mtlr r0
/* 805C8198  38 21 00 20 */	addi r1, r1, 0x20
/* 805C819C  4E 80 00 20 */	blr 
