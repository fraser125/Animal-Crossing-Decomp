lbl_805FB2EC:
/* 805FB2EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805FB2F0  7C 08 02 A6 */	mflr r0
/* 805FB2F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805FB2F8  39 61 00 20 */	addi r11, r1, 0x20
/* 805FB2FC  4B A9 FB D9 */	bl func_8009AED4
/* 805FB300  7C 7D 1B 78 */	mr r29, r3
/* 805FB304  7C BE 2B 78 */	mr r30, r5
/* 805FB308  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805FB30C  80 1E 00 40 */	lwz r0, 0x40(r30)
/* 805FB310  83 E5 09 88 */	lwz r31, 0x988(r5)
/* 805FB314  88 BF 03 F2 */	lbz r5, 0x3f2(r31)
/* 805FB318  7C 05 00 00 */	cmpw r5, r0
/* 805FB31C  41 82 00 38 */	beq lbl_805FB354
/* 805FB320  4B FF B9 3D */	bl mTG_mark_main_CLR
/* 805FB324  80 9E 00 40 */	lwz r4, 0x40(r30)
/* 805FB328  38 00 00 28 */	li r0, 0x28
/* 805FB32C  7F A3 EB 78 */	mr r3, r29
/* 805FB330  98 9F 03 F5 */	stb r4, 0x3f5(r31)
/* 805FB334  B0 1F 03 F6 */	sth r0, 0x3f6(r31)
/* 805FB338  80 9D 00 2C */	lwz r4, 0x2c(r29)
/* 805FB33C  80 84 09 80 */	lwz r4, 0x980(r4)
/* 805FB340  81 84 03 70 */	lwz r12, 0x370(r4)
/* 805FB344  7D 89 03 A6 */	mtctr r12
/* 805FB348  4E 80 04 21 */	bctrl 
/* 805FB34C  38 60 04 1C */	li r3, 0x41c
/* 805FB350  48 03 29 B5 */	bl sAdo_SysTrgStart
lbl_805FB354:
/* 805FB354  38 60 00 00 */	li r3, 0
/* 805FB358  39 61 00 20 */	addi r11, r1, 0x20
/* 805FB35C  4B A9 FB C5 */	bl func_8009AF20
/* 805FB360  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805FB364  7C 08 03 A6 */	mtlr r0
/* 805FB368  38 21 00 20 */	addi r1, r1, 0x20
/* 805FB36C  4E 80 00 20 */	blr 
