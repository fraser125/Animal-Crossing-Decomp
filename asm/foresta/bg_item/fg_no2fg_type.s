lbl_804BB78C:
/* 804BB78C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804BB790  7C 08 02 A6 */	mflr r0
/* 804BB794  90 01 00 14 */	stw r0, 0x14(r1)
/* 804BB798  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 804BB79C  2C 00 00 02 */	cmpwi r0, 2
/* 804BB7A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804BB7A4  7C 9F 23 78 */	mr r31, r4
/* 804BB7A8  54 64 04 3E */	clrlwi r4, r3, 0x10
/* 804BB7AC  41 82 01 38 */	beq lbl_804BB8E4
/* 804BB7B0  40 80 00 14 */	bge lbl_804BB7C4
/* 804BB7B4  2C 00 00 00 */	cmpwi r0, 0
/* 804BB7B8  41 82 00 18 */	beq lbl_804BB7D0
/* 804BB7BC  40 80 00 F4 */	bge lbl_804BB8B0
/* 804BB7C0  48 00 01 58 */	b lbl_804BB918
lbl_804BB7C4:
/* 804BB7C4  2C 00 00 04 */	cmpwi r0, 4
/* 804BB7C8  40 80 01 50 */	bge lbl_804BB918
/* 804BB7CC  48 00 00 E4 */	b lbl_804BB8B0
lbl_804BB7D0:
/* 804BB7D0  54 80 C7 3E */	rlwinm r0, r4, 0x18, 0x1c, 0x1f
/* 804BB7D4  2C 00 00 08 */	cmpwi r0, 8
/* 804BB7D8  41 82 00 7C */	beq lbl_804BB854
/* 804BB7DC  40 80 00 AC */	bge lbl_804BB888
/* 804BB7E0  2C 00 00 00 */	cmpwi r0, 0
/* 804BB7E4  41 82 00 08 */	beq lbl_804BB7EC
/* 804BB7E8  48 00 00 A0 */	b lbl_804BB888
lbl_804BB7EC:
/* 804BB7EC  1C 04 00 0C */	mulli r0, r4, 0xc
/* 804BB7F0  80 86 00 00 */	lwz r4, 0(r6)
/* 804BB7F4  7C A3 2B 78 */	mr r3, r5
/* 804BB7F8  7C 84 02 14 */	add r4, r4, r0
/* 804BB7FC  88 04 00 00 */	lbz r0, 0(r4)
/* 804BB800  98 1F 00 00 */	stb r0, 0(r31)
/* 804BB804  A8 04 00 02 */	lha r0, 2(r4)
/* 804BB808  B0 1F 00 02 */	sth r0, 2(r31)
/* 804BB80C  80 04 00 04 */	lwz r0, 4(r4)
/* 804BB810  90 1F 00 04 */	stw r0, 4(r31)
/* 804BB814  80 04 00 08 */	lwz r0, 8(r4)
/* 804BB818  90 1F 00 08 */	stw r0, 8(r31)
/* 804BB81C  4B ED 4D 19 */	bl mCoBG_CheckSandHole_ClData
/* 804BB820  2C 03 00 00 */	cmpwi r3, 0
/* 804BB824  41 82 01 18 */	beq lbl_804BB93C
/* 804BB828  A8 1F 00 02 */	lha r0, 2(r31)
/* 804BB82C  2C 00 00 0B */	cmpwi r0, 0xb
/* 804BB830  40 82 00 10 */	bne lbl_804BB840
/* 804BB834  38 00 00 0C */	li r0, 0xc
/* 804BB838  B0 1F 00 02 */	sth r0, 2(r31)
/* 804BB83C  48 00 01 00 */	b lbl_804BB93C
lbl_804BB840:
/* 804BB840  2C 00 00 0D */	cmpwi r0, 0xd
/* 804BB844  40 82 00 F8 */	bne lbl_804BB93C
/* 804BB848  38 00 00 0E */	li r0, 0xe
/* 804BB84C  B0 1F 00 02 */	sth r0, 2(r31)
/* 804BB850  48 00 00 EC */	b lbl_804BB93C
lbl_804BB854:
/* 804BB854  1C 64 00 0C */	mulli r3, r4, 0xc
/* 804BB858  80 06 00 04 */	lwz r0, 4(r6)
/* 804BB85C  38 63 A0 00 */	addi r3, r3, -24576
/* 804BB860  7C 60 1A 14 */	add r3, r0, r3
/* 804BB864  88 03 00 00 */	lbz r0, 0(r3)
/* 804BB868  98 1F 00 00 */	stb r0, 0(r31)
/* 804BB86C  A8 03 00 02 */	lha r0, 2(r3)
/* 804BB870  B0 1F 00 02 */	sth r0, 2(r31)
/* 804BB874  80 03 00 04 */	lwz r0, 4(r3)
/* 804BB878  90 1F 00 04 */	stw r0, 4(r31)
/* 804BB87C  80 03 00 08 */	lwz r0, 8(r3)
/* 804BB880  90 1F 00 08 */	stw r0, 8(r31)
/* 804BB884  48 00 00 B8 */	b lbl_804BB93C
lbl_804BB888:
/* 804BB888  80 66 00 14 */	lwz r3, 0x14(r6)
/* 804BB88C  88 03 00 00 */	lbz r0, 0(r3)
/* 804BB890  98 1F 00 00 */	stb r0, 0(r31)
/* 804BB894  A8 03 00 02 */	lha r0, 2(r3)
/* 804BB898  B0 1F 00 02 */	sth r0, 2(r31)
/* 804BB89C  80 03 00 04 */	lwz r0, 4(r3)
/* 804BB8A0  90 1F 00 04 */	stw r0, 4(r31)
/* 804BB8A4  80 03 00 08 */	lwz r0, 8(r3)
/* 804BB8A8  90 1F 00 08 */	stw r0, 8(r31)
/* 804BB8AC  48 00 00 90 */	b lbl_804BB93C
lbl_804BB8B0:
/* 804BB8B0  80 86 00 08 */	lwz r4, 8(r6)
/* 804BB8B4  88 04 00 00 */	lbz r0, 0(r4)
/* 804BB8B8  98 1F 00 00 */	stb r0, 0(r31)
/* 804BB8BC  A8 04 00 02 */	lha r0, 2(r4)
/* 804BB8C0  B0 1F 00 02 */	sth r0, 2(r31)
/* 804BB8C4  80 04 00 04 */	lwz r0, 4(r4)
/* 804BB8C8  90 1F 00 04 */	stw r0, 4(r31)
/* 804BB8CC  80 04 00 08 */	lwz r0, 8(r4)
/* 804BB8D0  90 1F 00 08 */	stw r0, 8(r31)
/* 804BB8D4  4B F0 D6 ED */	bl func_803C8FC0
/* 804BB8D8  38 03 00 44 */	addi r0, r3, 0x44
/* 804BB8DC  B0 1F 00 02 */	sth r0, 2(r31)
/* 804BB8E0  48 00 00 5C */	b lbl_804BB93C
lbl_804BB8E4:
/* 804BB8E4  80 86 00 0C */	lwz r4, 0xc(r6)
/* 804BB8E8  88 04 00 00 */	lbz r0, 0(r4)
/* 804BB8EC  98 1F 00 00 */	stb r0, 0(r31)
/* 804BB8F0  A8 04 00 02 */	lha r0, 2(r4)
/* 804BB8F4  B0 1F 00 02 */	sth r0, 2(r31)
/* 804BB8F8  80 04 00 04 */	lwz r0, 4(r4)
/* 804BB8FC  90 1F 00 04 */	stw r0, 4(r31)
/* 804BB900  80 04 00 08 */	lwz r0, 8(r4)
/* 804BB904  90 1F 00 08 */	stw r0, 8(r31)
/* 804BB908  4B F0 D6 B9 */	bl func_803C8FC0
/* 804BB90C  38 03 00 44 */	addi r0, r3, 0x44
/* 804BB910  B0 1F 00 02 */	sth r0, 2(r31)
/* 804BB914  48 00 00 28 */	b lbl_804BB93C
lbl_804BB918:
/* 804BB918  80 66 00 14 */	lwz r3, 0x14(r6)
/* 804BB91C  88 03 00 00 */	lbz r0, 0(r3)
/* 804BB920  98 1F 00 00 */	stb r0, 0(r31)
/* 804BB924  A8 03 00 02 */	lha r0, 2(r3)
/* 804BB928  B0 1F 00 02 */	sth r0, 2(r31)
/* 804BB92C  80 03 00 04 */	lwz r0, 4(r3)
/* 804BB930  90 1F 00 04 */	stw r0, 4(r31)
/* 804BB934  80 03 00 08 */	lwz r0, 8(r3)
/* 804BB938  90 1F 00 08 */	stw r0, 8(r31)
lbl_804BB93C:
/* 804BB93C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804BB940  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804BB944  7C 08 03 A6 */	mtlr r0
/* 804BB948  38 21 00 10 */	addi r1, r1, 0x10
/* 804BB94C  4E 80 00 20 */	blr 
