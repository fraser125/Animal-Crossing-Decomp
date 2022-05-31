lbl_803D7B38:
/* 803D7B38  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803D7B3C  7C 08 02 A6 */	mflr r0
/* 803D7B40  90 01 00 34 */	stw r0, 0x34(r1)
/* 803D7B44  39 61 00 30 */	addi r11, r1, 0x30
/* 803D7B48  4B CC 33 89 */	bl func_8009AED0
/* 803D7B4C  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 803D7B50  7C 7F 1B 78 */	mr r31, r3
/* 803D7B54  38 C6 85 38 */	addi r6, r6, common_data@l /* 0x81138538@l */
/* 803D7B58  7C 9C 23 78 */	mr r28, r4
/* 803D7B5C  3C C6 00 02 */	addis r6, r6, 2
/* 803D7B60  7C BD 2B 78 */	mr r29, r5
/* 803D7B64  83 C6 61 1C */	lwz r30, 0x611c(r6)
/* 803D7B68  4B FF 38 A9 */	bl mNpc_CopyAnimalPersonalID
/* 803D7B6C  93 BF 00 10 */	stw r29, 0x10(r31)
/* 803D7B70  7F C4 F3 78 */	mr r4, r30
/* 803D7B74  88 7C 00 0D */	lbz r3, 0xd(r28)
/* 803D7B78  4B FF FC 31 */	bl func_803D77A8
/* 803D7B7C  7C 7E 1B 79 */	or. r30, r3, r3
/* 803D7B80  41 82 00 58 */	beq lbl_803D7BD8
/* 803D7B84  88 1E 00 04 */	lbz r0, 4(r30)
/* 803D7B88  28 00 00 00 */	cmplwi r0, 0
/* 803D7B8C  41 82 00 4C */	beq lbl_803D7BD8
/* 803D7B90  4B C8 51 65 */	bl fqrand
/* 803D7B94  88 BE 00 04 */	lbz r5, 4(r30)
/* 803D7B98  3C 00 43 30 */	lis r0, 0x4330
/* 803D7B9C  3C 60 80 64 */	lis r3, lit_491@ha /* 0x8064290C@ha */
/* 803D7BA0  90 01 00 08 */	stw r0, 8(r1)
/* 803D7BA4  38 83 29 0C */	addi r4, r3, lit_491@l /* 0x8064290C@l */
/* 803D7BA8  80 7E 00 00 */	lwz r3, 0(r30)
/* 803D7BAC  90 A1 00 0C */	stw r5, 0xc(r1)
/* 803D7BB0  C8 44 00 00 */	lfd f2, 0(r4)
/* 803D7BB4  C8 01 00 08 */	lfd f0, 8(r1)
/* 803D7BB8  EC 00 10 28 */	fsubs f0, f0, f2
/* 803D7BBC  EC 00 00 72 */	fmuls f0, f0, f1
/* 803D7BC0  FC 00 00 1E */	fctiwz f0, f0
/* 803D7BC4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803D7BC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D7BCC  7C 03 00 AE */	lbzx r0, r3, r0
/* 803D7BD0  98 1F 00 15 */	stb r0, 0x15(r31)
/* 803D7BD4  48 00 00 0C */	b lbl_803D7BE0
lbl_803D7BD8:
/* 803D7BD8  38 00 00 03 */	li r0, 3
/* 803D7BDC  98 1F 00 15 */	stb r0, 0x15(r31)
lbl_803D7BE0:
/* 803D7BE0  38 00 00 01 */	li r0, 1
/* 803D7BE4  39 61 00 30 */	addi r11, r1, 0x30
/* 803D7BE8  98 1F 00 14 */	stb r0, 0x14(r31)
/* 803D7BEC  4B CC 33 31 */	bl func_8009AF1C
/* 803D7BF0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803D7BF4  7C 08 03 A6 */	mtlr r0
/* 803D7BF8  38 21 00 30 */	addi r1, r1, 0x30
/* 803D7BFC  4E 80 00 20 */	blr 
