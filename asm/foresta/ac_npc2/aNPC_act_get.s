lbl_8054046C:
/* 8054046C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80540470  7C 08 02 A6 */	mflr r0
/* 80540474  90 01 00 24 */	stw r0, 0x24(r1)
/* 80540478  39 61 00 20 */	addi r11, r1, 0x20
/* 8054047C  4B B5 AA 59 */	bl func_8009AED4
/* 80540480  7C 7D 1B 78 */	mr r29, r3
/* 80540484  80 03 01 98 */	lwz r0, 0x198(r3)
/* 80540488  2C 00 00 01 */	cmpwi r0, 1
/* 8054048C  40 82 00 5C */	bne lbl_805404E8
/* 80540490  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80540494  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80540498  3F C4 00 02 */	addis r30, r4, 2
/* 8054049C  80 9E 60 94 */	lwz r4, 0x6094(r30)
/* 805404A0  81 84 00 04 */	lwz r12, 4(r4)
/* 805404A4  7D 89 03 A6 */	mtctr r12
/* 805404A8  4E 80 04 21 */	bctrl 
/* 805404AC  7C 7F 1B 79 */	or. r31, r3, r3
/* 805404B0  41 82 00 38 */	beq lbl_805404E8
/* 805404B4  80 BE 60 94 */	lwz r5, 0x6094(r30)
/* 805404B8  7F A3 EB 78 */	mr r3, r29
/* 805404BC  38 80 00 04 */	li r4, 4
/* 805404C0  81 85 00 08 */	lwz r12, 8(r5)
/* 805404C4  7D 89 03 A6 */	mtctr r12
/* 805404C8  4E 80 04 21 */	bctrl 
/* 805404CC  93 FD 08 84 */	stw r31, 0x884(r29)
/* 805404D0  7F A3 EB 78 */	mr r3, r29
/* 805404D4  38 80 00 02 */	li r4, 2
/* 805404D8  80 BE 60 94 */	lwz r5, 0x6094(r30)
/* 805404DC  A0 05 00 0E */	lhz r0, 0xe(r5)
/* 805404E0  B0 1D 08 7E */	sth r0, 0x87e(r29)
/* 805404E4  4B FF FD 99 */	bl func_8054027C
lbl_805404E8:
/* 805404E8  39 61 00 20 */	addi r11, r1, 0x20
/* 805404EC  4B B5 AA 35 */	bl func_8009AF20
/* 805404F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805404F4  7C 08 03 A6 */	mtlr r0
/* 805404F8  38 21 00 20 */	addi r1, r1, 0x20
/* 805404FC  4E 80 00 20 */	blr 