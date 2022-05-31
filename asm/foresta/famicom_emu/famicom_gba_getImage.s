lbl_8062D744:
/* 8062D744  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 8062D748  7C 08 02 A6 */	mflr r0
/* 8062D74C  28 03 00 13 */	cmplwi r3, 0x13
/* 8062D750  90 01 01 14 */	stw r0, 0x114(r1)
/* 8062D754  93 E1 01 0C */	stw r31, 0x10c(r1)
/* 8062D758  93 C1 01 08 */	stw r30, 0x108(r1)
/* 8062D75C  7C 9E 23 78 */	mr r30, r4
/* 8062D760  40 81 00 0C */	ble lbl_8062D76C
/* 8062D764  38 60 00 00 */	li r3, 0
/* 8062D768  48 00 00 74 */	b lbl_8062D7DC
lbl_8062D76C:
/* 8062D76C  30 03 FF FF */	addic r0, r3, -1
/* 8062D770  3C 80 80 6D */	lis r4, names@ha /* 0x806D4B44@ha */
/* 8062D774  7C A0 01 10 */	subfe r5, r0, r0
/* 8062D778  38 03 FF FF */	addi r0, r3, -1
/* 8062D77C  7C 00 28 78 */	andc r0, r0, r5
/* 8062D780  38 64 4B 44 */	addi r3, r4, names@l /* 0x806D4B44@l */
/* 8062D784  54 00 10 3A */	slwi r0, r0, 2
/* 8062D788  7C A3 00 2E */	lwzx r5, r3, r0
/* 8062D78C  28 05 00 00 */	cmplwi r5, 0
/* 8062D790  40 82 00 0C */	bne lbl_8062D79C
/* 8062D794  38 60 00 00 */	li r3, 0
/* 8062D798  48 00 00 44 */	b lbl_8062D7DC
lbl_8062D79C:
/* 8062D79C  3C 60 80 6D */	lis r3, lit_542@ha /* 0x806D4B90@ha */
/* 8062D7A0  38 83 4B 90 */	addi r4, r3, lit_542@l /* 0x806D4B90@l */
/* 8062D7A4  38 61 00 08 */	addi r3, r1, 8
/* 8062D7A8  4C C6 31 82 */	crclr 6
/* 8062D7AC  4B A2 F6 9D */	bl sprintf
/* 8062D7B0  38 61 00 08 */	addi r3, r1, 8
/* 8062D7B4  4B A3 41 E1 */	bl JC__JKRGetResource
/* 8062D7B8  7C 7F 1B 79 */	or. r31, r3, r3
/* 8062D7BC  41 82 00 1C */	beq lbl_8062D7D8
/* 8062D7C0  28 1E 00 00 */	cmplwi r30, 0
/* 8062D7C4  41 82 00 14 */	beq lbl_8062D7D8
/* 8062D7C8  7F E4 FB 78 */	mr r4, r31
/* 8062D7CC  38 60 00 00 */	li r3, 0
/* 8062D7D0  4B A3 3B 85 */	bl JC__JKRGetMemBlockSize
/* 8062D7D4  90 7E 00 00 */	stw r3, 0(r30)
lbl_8062D7D8:
/* 8062D7D8  7F E3 FB 78 */	mr r3, r31
lbl_8062D7DC:
/* 8062D7DC  80 01 01 14 */	lwz r0, 0x114(r1)
/* 8062D7E0  83 E1 01 0C */	lwz r31, 0x10c(r1)
/* 8062D7E4  83 C1 01 08 */	lwz r30, 0x108(r1)
/* 8062D7E8  7C 08 03 A6 */	mtlr r0
/* 8062D7EC  38 21 01 10 */	addi r1, r1, 0x110
/* 8062D7F0  4E 80 00 20 */	blr 
