lbl_805D985C:
/* 805D985C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805D9860  7C 08 02 A6 */	mflr r0
/* 805D9864  90 01 00 14 */	stw r0, 0x14(r1)
/* 805D9868  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805D986C  7C 7F 1B 78 */	mr r31, r3
/* 805D9870  A8 63 00 16 */	lha r3, 0x16(r3)
/* 805D9874  2C 03 00 00 */	cmpwi r3, 0
/* 805D9878  41 82 00 4C */	beq lbl_805D98C4
/* 805D987C  38 03 FF FF */	addi r0, r3, -1
/* 805D9880  B0 1F 00 16 */	sth r0, 0x16(r31)
/* 805D9884  A8 9F 00 16 */	lha r4, 0x16(r31)
/* 805D9888  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 805D988C  A8 1F 00 18 */	lha r0, 0x18(r31)
/* 805D9890  7C 63 22 14 */	add r3, r3, r4
/* 805D9894  7C A4 00 50 */	subf r5, r4, r0
/* 805D9898  38 83 00 01 */	addi r4, r3, 1
/* 805D989C  38 A5 FF FF */	addi r5, r5, -1
/* 805D98A0  4B DE 11 85 */	bl func_803BAA24
/* 805D98A4  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 805D98A8  38 A0 00 20 */	li r5, 0x20
/* 805D98AC  A8 7F 00 18 */	lha r3, 0x18(r31)
/* 805D98B0  38 00 00 01 */	li r0, 1
/* 805D98B4  7C 64 1A 14 */	add r3, r4, r3
/* 805D98B8  98 A3 FF FF */	stb r5, -1(r3)
/* 805D98BC  98 1F 00 15 */	stb r0, 0x15(r31)
/* 805D98C0  48 00 00 44 */	b lbl_805D9904
lbl_805D98C4:
/* 805D98C4  80 04 00 00 */	lwz r0, 0(r4)
/* 805D98C8  2C 00 00 01 */	cmpwi r0, 1
/* 805D98CC  40 82 00 38 */	bne lbl_805D9904
/* 805D98D0  38 00 00 00 */	li r0, 0
/* 805D98D4  38 64 00 06 */	addi r3, r4, 6
/* 805D98D8  90 04 00 00 */	stw r0, 0(r4)
/* 805D98DC  38 A0 00 20 */	li r5, 0x20
/* 805D98E0  38 00 00 01 */	li r0, 1
/* 805D98E4  90 7F 00 28 */	stw r3, 0x28(r31)
/* 805D98E8  A8 7F 00 18 */	lha r3, 0x18(r31)
/* 805D98EC  38 63 FF FF */	addi r3, r3, -1
/* 805D98F0  B0 7F 00 16 */	sth r3, 0x16(r31)
/* 805D98F4  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 805D98F8  A8 7F 00 16 */	lha r3, 0x16(r31)
/* 805D98FC  7C A4 19 AE */	stbx r5, r4, r3
/* 805D9900  98 1F 00 15 */	stb r0, 0x15(r31)
lbl_805D9904:
/* 805D9904  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805D9908  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805D990C  7C 08 03 A6 */	mtlr r0
/* 805D9910  38 21 00 10 */	addi r1, r1, 0x10
/* 805D9914  4E 80 00 20 */	blr 