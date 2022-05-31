lbl_803F8D78:
/* 803F8D78  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803F8D7C  7C 08 02 A6 */	mflr r0
/* 803F8D80  90 01 00 24 */	stw r0, 0x24(r1)
/* 803F8D84  39 61 00 20 */	addi r11, r1, 0x20
/* 803F8D88  4B CA 21 49 */	bl func_8009AED0
/* 803F8D8C  83 E1 00 28 */	lwz r31, 0x28(r1)
/* 803F8D90  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000A000@ha */
/* 803F8D94  7C 7C 1B 78 */	mr r28, r3
/* 803F8D98  7C 9D 23 78 */	mr r29, r4
/* 803F8D9C  7C BE 2B 78 */	mr r30, r5
/* 803F8DA0  38 66 A0 00 */	addi r3, r6, 0xA000 /* 0x0000A000@l */
/* 803F8DA4  4B FF EA 51 */	bl mCD_malloc_32
/* 803F8DA8  90 7F 00 00 */	stw r3, 0(r31)
/* 803F8DAC  80 9F 00 00 */	lwz r4, 0(r31)
/* 803F8DB0  28 04 00 00 */	cmplwi r4, 0
/* 803F8DB4  41 82 00 50 */	beq lbl_803F8E04
/* 803F8DB8  7F A3 EB 78 */	mr r3, r29
/* 803F8DBC  38 A0 00 00 */	li r5, 0
/* 803F8DC0  38 C0 00 00 */	li r6, 0
/* 803F8DC4  4B C9 77 99 */	bl CARDMountAsync
/* 803F8DC8  90 7E 00 00 */	stw r3, 0(r30)
/* 803F8DCC  80 1E 00 00 */	lwz r0, 0(r30)
/* 803F8DD0  2C 00 00 00 */	cmpwi r0, 0
/* 803F8DD4  41 82 00 14 */	beq lbl_803F8DE8
/* 803F8DD8  2C 00 FF FA */	cmpwi r0, -6
/* 803F8DDC  41 82 00 0C */	beq lbl_803F8DE8
/* 803F8DE0  2C 00 FF F3 */	cmpwi r0, -13
/* 803F8DE4  40 82 00 18 */	bne lbl_803F8DFC
lbl_803F8DE8:
/* 803F8DE8  80 9C 00 18 */	lwz r4, 0x18(r28)
/* 803F8DEC  38 60 00 01 */	li r3, 1
/* 803F8DF0  38 04 00 01 */	addi r0, r4, 1
/* 803F8DF4  90 1C 00 18 */	stw r0, 0x18(r28)
/* 803F8DF8  48 00 00 10 */	b lbl_803F8E08
lbl_803F8DFC:
/* 803F8DFC  38 60 FF FF */	li r3, -1
/* 803F8E00  48 00 00 08 */	b lbl_803F8E08
lbl_803F8E04:
/* 803F8E04  38 60 FF FF */	li r3, -1
lbl_803F8E08:
/* 803F8E08  39 61 00 20 */	addi r11, r1, 0x20
/* 803F8E0C  4B CA 21 11 */	bl func_8009AF1C
/* 803F8E10  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803F8E14  7C 08 03 A6 */	mtlr r0
/* 803F8E18  38 21 00 20 */	addi r1, r1, 0x20
/* 803F8E1C  4E 80 00 20 */	blr 
