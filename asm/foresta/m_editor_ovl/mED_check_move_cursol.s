lbl_805D8724:
/* 805D8724  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805D8728  7C 08 02 A6 */	mflr r0
/* 805D872C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805D8730  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805D8734  7C 7F 1B 78 */	mr r31, r3
/* 805D8738  93 C1 00 08 */	stw r30, 8(r1)
/* 805D873C  4B DB D8 35 */	bl getTrigger
/* 805D8740  54 7E 04 3E */	clrlwi r30, r3, 0x10
/* 805D8744  4B DB D7 8D */	bl getButton
/* 805D8748  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 805D874C  38 60 00 00 */	li r3, 0
/* 805D8750  7C 00 F3 78 */	or r0, r0, r30
/* 805D8754  70 06 4F 00 */	andi. r6, r0, 0x4f00
/* 805D8758  40 82 00 24 */	bne lbl_805D877C
/* 805D875C  38 A0 00 00 */	li r5, 0
/* 805D8760  38 80 00 1E */	li r4, 0x1e
/* 805D8764  90 BF 00 08 */	stw r5, 8(r31)
/* 805D8768  38 00 00 1A */	li r0, 0x1a
/* 805D876C  98 9F 00 10 */	stb r4, 0x10(r31)
/* 805D8770  98 1F 00 0F */	stb r0, 0xf(r31)
/* 805D8774  98 BF 00 0E */	stb r5, 0xe(r31)
/* 805D8778  48 00 00 F0 */	b lbl_805D8868
lbl_805D877C:
/* 805D877C  80 1F 00 08 */	lwz r0, 8(r31)
/* 805D8780  7C 06 00 40 */	cmplw r6, r0
/* 805D8784  40 82 00 7C */	bne lbl_805D8800
/* 805D8788  88 1F 00 0E */	lbz r0, 0xe(r31)
/* 805D878C  28 00 00 01 */	cmplwi r0, 1
/* 805D8790  40 82 00 18 */	bne lbl_805D87A8
/* 805D8794  88 9F 00 0F */	lbz r4, 0xf(r31)
/* 805D8798  28 04 00 00 */	cmplwi r4, 0
/* 805D879C  41 82 00 0C */	beq lbl_805D87A8
/* 805D87A0  38 04 FF FF */	addi r0, r4, -1
/* 805D87A4  98 1F 00 0F */	stb r0, 0xf(r31)
lbl_805D87A8:
/* 805D87A8  88 9F 00 10 */	lbz r4, 0x10(r31)
/* 805D87AC  28 04 00 00 */	cmplwi r4, 0
/* 805D87B0  41 82 00 14 */	beq lbl_805D87C4
/* 805D87B4  38 04 FF FF */	addi r0, r4, -1
/* 805D87B8  38 60 00 09 */	li r3, 9
/* 805D87BC  98 1F 00 10 */	stb r0, 0x10(r31)
/* 805D87C0  48 00 00 A8 */	b lbl_805D8868
lbl_805D87C4:
/* 805D87C4  88 1F 00 0F */	lbz r0, 0xf(r31)
/* 805D87C8  28 00 00 00 */	cmplwi r0, 0
/* 805D87CC  40 82 00 18 */	bne lbl_805D87E4
/* 805D87D0  38 80 00 02 */	li r4, 2
/* 805D87D4  38 00 00 03 */	li r0, 3
/* 805D87D8  98 9F 00 10 */	stb r4, 0x10(r31)
/* 805D87DC  98 1F 00 34 */	stb r0, 0x34(r31)
/* 805D87E0  48 00 00 3C */	b lbl_805D881C
lbl_805D87E4:
/* 805D87E4  38 00 00 06 */	li r0, 6
/* 805D87E8  38 80 00 01 */	li r4, 1
/* 805D87EC  98 1F 00 10 */	stb r0, 0x10(r31)
/* 805D87F0  38 00 00 02 */	li r0, 2
/* 805D87F4  98 9F 00 0E */	stb r4, 0xe(r31)
/* 805D87F8  98 1F 00 34 */	stb r0, 0x34(r31)
/* 805D87FC  48 00 00 20 */	b lbl_805D881C
lbl_805D8800:
/* 805D8800  90 DF 00 08 */	stw r6, 8(r31)
/* 805D8804  38 A0 00 1E */	li r5, 0x1e
/* 805D8808  38 80 00 1A */	li r4, 0x1a
/* 805D880C  38 00 00 00 */	li r0, 0
/* 805D8810  98 BF 00 10 */	stb r5, 0x10(r31)
/* 805D8814  98 9F 00 0F */	stb r4, 0xf(r31)
/* 805D8818  98 1F 00 0E */	stb r0, 0xe(r31)
lbl_805D881C:
/* 805D881C  54 C0 04 63 */	rlwinm. r0, r6, 0, 0x11, 0x11
/* 805D8820  41 82 00 0C */	beq lbl_805D882C
/* 805D8824  38 60 00 06 */	li r3, 6
/* 805D8828  48 00 00 40 */	b lbl_805D8868
lbl_805D882C:
/* 805D882C  54 C0 05 AD */	rlwinm. r0, r6, 0, 0x16, 0x16
/* 805D8830  41 82 00 0C */	beq lbl_805D883C
/* 805D8834  38 60 00 02 */	li r3, 2
/* 805D8838  48 00 00 30 */	b lbl_805D8868
lbl_805D883C:
/* 805D883C  54 C0 05 6B */	rlwinm. r0, r6, 0, 0x15, 0x15
/* 805D8840  41 82 00 0C */	beq lbl_805D884C
/* 805D8844  38 60 00 04 */	li r3, 4
/* 805D8848  48 00 00 20 */	b lbl_805D8868
lbl_805D884C:
/* 805D884C  54 C0 05 29 */	rlwinm. r0, r6, 0, 0x14, 0x14
/* 805D8850  41 82 00 0C */	beq lbl_805D885C
/* 805D8854  38 60 00 03 */	li r3, 3
/* 805D8858  48 00 00 10 */	b lbl_805D8868
lbl_805D885C:
/* 805D885C  54 C0 05 EF */	rlwinm. r0, r6, 0, 0x17, 0x17
/* 805D8860  41 82 00 08 */	beq lbl_805D8868
/* 805D8864  38 60 00 01 */	li r3, 1
lbl_805D8868:
/* 805D8868  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805D886C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805D8870  83 C1 00 08 */	lwz r30, 8(r1)
/* 805D8874  7C 08 03 A6 */	mtlr r0
/* 805D8878  38 21 00 10 */	addi r1, r1, 0x10
/* 805D887C  4E 80 00 20 */	blr 