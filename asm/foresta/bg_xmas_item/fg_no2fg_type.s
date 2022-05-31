lbl_804CA69C:
/* 804CA69C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804CA6A0  7C 08 02 A6 */	mflr r0
/* 804CA6A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804CA6A8  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 804CA6AC  2C 00 00 02 */	cmpwi r0, 2
/* 804CA6B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804CA6B4  7C 9F 23 78 */	mr r31, r4
/* 804CA6B8  54 64 04 3E */	clrlwi r4, r3, 0x10
/* 804CA6BC  41 82 01 38 */	beq lbl_804CA7F4
/* 804CA6C0  40 80 00 14 */	bge lbl_804CA6D4
/* 804CA6C4  2C 00 00 00 */	cmpwi r0, 0
/* 804CA6C8  41 82 00 18 */	beq lbl_804CA6E0
/* 804CA6CC  40 80 00 F4 */	bge lbl_804CA7C0
/* 804CA6D0  48 00 01 58 */	b lbl_804CA828
lbl_804CA6D4:
/* 804CA6D4  2C 00 00 04 */	cmpwi r0, 4
/* 804CA6D8  40 80 01 50 */	bge lbl_804CA828
/* 804CA6DC  48 00 00 E4 */	b lbl_804CA7C0
lbl_804CA6E0:
/* 804CA6E0  54 80 C7 3E */	rlwinm r0, r4, 0x18, 0x1c, 0x1f
/* 804CA6E4  2C 00 00 08 */	cmpwi r0, 8
/* 804CA6E8  41 82 00 7C */	beq lbl_804CA764
/* 804CA6EC  40 80 00 AC */	bge lbl_804CA798
/* 804CA6F0  2C 00 00 00 */	cmpwi r0, 0
/* 804CA6F4  41 82 00 08 */	beq lbl_804CA6FC
/* 804CA6F8  48 00 00 A0 */	b lbl_804CA798
lbl_804CA6FC:
/* 804CA6FC  1C 04 00 0C */	mulli r0, r4, 0xc
/* 804CA700  80 86 00 00 */	lwz r4, 0(r6)
/* 804CA704  7C A3 2B 78 */	mr r3, r5
/* 804CA708  7C 84 02 14 */	add r4, r4, r0
/* 804CA70C  88 04 00 00 */	lbz r0, 0(r4)
/* 804CA710  98 1F 00 00 */	stb r0, 0(r31)
/* 804CA714  A8 04 00 02 */	lha r0, 2(r4)
/* 804CA718  B0 1F 00 02 */	sth r0, 2(r31)
/* 804CA71C  80 04 00 04 */	lwz r0, 4(r4)
/* 804CA720  90 1F 00 04 */	stw r0, 4(r31)
/* 804CA724  80 04 00 08 */	lwz r0, 8(r4)
/* 804CA728  90 1F 00 08 */	stw r0, 8(r31)
/* 804CA72C  4B EC 5E 09 */	bl mCoBG_CheckSandHole_ClData
/* 804CA730  2C 03 00 00 */	cmpwi r3, 0
/* 804CA734  41 82 01 18 */	beq lbl_804CA84C
/* 804CA738  A8 1F 00 02 */	lha r0, 2(r31)
/* 804CA73C  2C 00 00 0B */	cmpwi r0, 0xb
/* 804CA740  40 82 00 10 */	bne lbl_804CA750
/* 804CA744  38 00 00 0C */	li r0, 0xc
/* 804CA748  B0 1F 00 02 */	sth r0, 2(r31)
/* 804CA74C  48 00 01 00 */	b lbl_804CA84C
lbl_804CA750:
/* 804CA750  2C 00 00 0D */	cmpwi r0, 0xd
/* 804CA754  40 82 00 F8 */	bne lbl_804CA84C
/* 804CA758  38 00 00 0E */	li r0, 0xe
/* 804CA75C  B0 1F 00 02 */	sth r0, 2(r31)
/* 804CA760  48 00 00 EC */	b lbl_804CA84C
lbl_804CA764:
/* 804CA764  1C 64 00 0C */	mulli r3, r4, 0xc
/* 804CA768  80 06 00 04 */	lwz r0, 4(r6)
/* 804CA76C  38 63 A0 00 */	addi r3, r3, -24576
/* 804CA770  7C 60 1A 14 */	add r3, r0, r3
/* 804CA774  88 03 00 00 */	lbz r0, 0(r3)
/* 804CA778  98 1F 00 00 */	stb r0, 0(r31)
/* 804CA77C  A8 03 00 02 */	lha r0, 2(r3)
/* 804CA780  B0 1F 00 02 */	sth r0, 2(r31)
/* 804CA784  80 03 00 04 */	lwz r0, 4(r3)
/* 804CA788  90 1F 00 04 */	stw r0, 4(r31)
/* 804CA78C  80 03 00 08 */	lwz r0, 8(r3)
/* 804CA790  90 1F 00 08 */	stw r0, 8(r31)
/* 804CA794  48 00 00 B8 */	b lbl_804CA84C
lbl_804CA798:
/* 804CA798  80 66 00 14 */	lwz r3, 0x14(r6)
/* 804CA79C  88 03 00 00 */	lbz r0, 0(r3)
/* 804CA7A0  98 1F 00 00 */	stb r0, 0(r31)
/* 804CA7A4  A8 03 00 02 */	lha r0, 2(r3)
/* 804CA7A8  B0 1F 00 02 */	sth r0, 2(r31)
/* 804CA7AC  80 03 00 04 */	lwz r0, 4(r3)
/* 804CA7B0  90 1F 00 04 */	stw r0, 4(r31)
/* 804CA7B4  80 03 00 08 */	lwz r0, 8(r3)
/* 804CA7B8  90 1F 00 08 */	stw r0, 8(r31)
/* 804CA7BC  48 00 00 90 */	b lbl_804CA84C
lbl_804CA7C0:
/* 804CA7C0  80 86 00 08 */	lwz r4, 8(r6)
/* 804CA7C4  88 04 00 00 */	lbz r0, 0(r4)
/* 804CA7C8  98 1F 00 00 */	stb r0, 0(r31)
/* 804CA7CC  A8 04 00 02 */	lha r0, 2(r4)
/* 804CA7D0  B0 1F 00 02 */	sth r0, 2(r31)
/* 804CA7D4  80 04 00 04 */	lwz r0, 4(r4)
/* 804CA7D8  90 1F 00 04 */	stw r0, 4(r31)
/* 804CA7DC  80 04 00 08 */	lwz r0, 8(r4)
/* 804CA7E0  90 1F 00 08 */	stw r0, 8(r31)
/* 804CA7E4  4B EF E7 DD */	bl func_803C8FC0
/* 804CA7E8  38 03 00 46 */	addi r0, r3, 0x46
/* 804CA7EC  B0 1F 00 02 */	sth r0, 2(r31)
/* 804CA7F0  48 00 00 5C */	b lbl_804CA84C
lbl_804CA7F4:
/* 804CA7F4  80 86 00 0C */	lwz r4, 0xc(r6)
/* 804CA7F8  88 04 00 00 */	lbz r0, 0(r4)
/* 804CA7FC  98 1F 00 00 */	stb r0, 0(r31)
/* 804CA800  A8 04 00 02 */	lha r0, 2(r4)
/* 804CA804  B0 1F 00 02 */	sth r0, 2(r31)
/* 804CA808  80 04 00 04 */	lwz r0, 4(r4)
/* 804CA80C  90 1F 00 04 */	stw r0, 4(r31)
/* 804CA810  80 04 00 08 */	lwz r0, 8(r4)
/* 804CA814  90 1F 00 08 */	stw r0, 8(r31)
/* 804CA818  4B EF E7 A9 */	bl func_803C8FC0
/* 804CA81C  38 03 00 46 */	addi r0, r3, 0x46
/* 804CA820  B0 1F 00 02 */	sth r0, 2(r31)
/* 804CA824  48 00 00 28 */	b lbl_804CA84C
lbl_804CA828:
/* 804CA828  80 66 00 14 */	lwz r3, 0x14(r6)
/* 804CA82C  88 03 00 00 */	lbz r0, 0(r3)
/* 804CA830  98 1F 00 00 */	stb r0, 0(r31)
/* 804CA834  A8 03 00 02 */	lha r0, 2(r3)
/* 804CA838  B0 1F 00 02 */	sth r0, 2(r31)
/* 804CA83C  80 03 00 04 */	lwz r0, 4(r3)
/* 804CA840  90 1F 00 04 */	stw r0, 4(r31)
/* 804CA844  80 03 00 08 */	lwz r0, 8(r3)
/* 804CA848  90 1F 00 08 */	stw r0, 8(r31)
lbl_804CA84C:
/* 804CA84C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804CA850  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804CA854  7C 08 03 A6 */	mtlr r0
/* 804CA858  38 21 00 10 */	addi r1, r1, 0x10
/* 804CA85C  4E 80 00 20 */	blr 
