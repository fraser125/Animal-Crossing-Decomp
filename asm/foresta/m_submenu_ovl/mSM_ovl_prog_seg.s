lbl_805EEC00:
/* 805EEC00  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805EEC04  7C 08 02 A6 */	mflr r0
/* 805EEC08  90 01 00 24 */	stw r0, 0x24(r1)
/* 805EEC0C  39 61 00 20 */	addi r11, r1, 0x20
/* 805EEC10  4B AA C2 C5 */	bl func_8009AED4
/* 805EEC14  7C 9D 23 78 */	mr r29, r4
/* 805EEC18  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 805EEC1C  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 805EEC20  2C 00 00 01 */	cmpwi r0, 1
/* 805EEC24  40 82 00 14 */	bne lbl_805EEC38
/* 805EEC28  81 9D 00 10 */	lwz r12, 0x10(r29)
/* 805EEC2C  7D 89 03 A6 */	mtctr r12
/* 805EEC30  4E 80 04 21 */	bctrl 
/* 805EEC34  48 00 00 60 */	b lbl_805EEC94
lbl_805EEC38:
/* 805EEC38  38 00 00 00 */	li r0, 0
/* 805EEC3C  90 1D 00 08 */	stw r0, 8(r29)
/* 805EEC40  90 1D 00 0C */	stw r0, 0xc(r29)
/* 805EEC44  80 9D 00 08 */	lwz r4, 8(r29)
/* 805EEC48  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 805EEC4C  7C 84 00 50 */	subf r4, r4, r0
/* 805EEC50  38 04 00 3F */	addi r0, r4, 0x3f
/* 805EEC54  54 00 00 32 */	rlwinm r0, r0, 0, 0, 0x19
/* 805EEC58  90 03 00 28 */	stw r0, 0x28(r3)
/* 805EEC5C  83 DD 00 10 */	lwz r30, 0x10(r29)
/* 805EEC60  7F CC F3 78 */	mr r12, r30
/* 805EEC64  7D 89 03 A6 */	mtctr r12
/* 805EEC68  4E 80 04 21 */	bctrl 
/* 805EEC6C  93 DD 00 10 */	stw r30, 0x10(r29)
/* 805EEC70  38 00 00 01 */	li r0, 1
/* 805EEC74  90 1D 00 1C */	stw r0, 0x1c(r29)
/* 805EEC78  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 805EEC7C  54 00 10 3A */	slwi r0, r0, 2
/* 805EEC80  7C 7F 02 14 */	add r3, r31, r0
/* 805EEC84  93 A3 00 34 */	stw r29, 0x34(r3)
/* 805EEC88  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 805EEC8C  38 03 00 01 */	addi r0, r3, 1
/* 805EEC90  90 1F 00 30 */	stw r0, 0x30(r31)
lbl_805EEC94:
/* 805EEC94  39 61 00 20 */	addi r11, r1, 0x20
/* 805EEC98  4B AA C2 89 */	bl func_8009AF20
/* 805EEC9C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805EECA0  7C 08 03 A6 */	mtlr r0
/* 805EECA4  38 21 00 20 */	addi r1, r1, 0x20
/* 805EECA8  4E 80 00 20 */	blr 
