lbl_803CF224:
/* 803CF224  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803CF228  7C 08 02 A6 */	mflr r0
/* 803CF22C  90 01 00 34 */	stw r0, 0x34(r1)
/* 803CF230  39 61 00 30 */	addi r11, r1, 0x30
/* 803CF234  4B CC BC 89 */	bl func_8009AEBC
/* 803CF238  3C A0 81 17 */	lis r5, fakeTable_1868@ha /* 0x8116B564@ha */
/* 803CF23C  7C 9B 23 78 */	mr r27, r4
/* 803CF240  38 05 B5 64 */	addi r0, r5, fakeTable_1868@l /* 0x8116B564@l */
/* 803CF244  7C 7A 1B 78 */	mr r26, r3
/* 803CF248  7C 03 03 78 */	mr r3, r0
/* 803CF24C  3B A0 00 00 */	li r29, 0
/* 803CF250  3B 20 00 00 */	li r25, 0
/* 803CF254  3B 80 00 00 */	li r28, 0
/* 803CF258  38 80 03 B0 */	li r4, 0x3b0
/* 803CF25C  4B C8 DE 0D */	bl bzero
/* 803CF260  3C 60 81 17 */	lis r3, fakeTable_1868@ha /* 0x8116B564@ha */
/* 803CF264  38 80 00 EC */	li r4, 0xec
/* 803CF268  38 63 B5 64 */	addi r3, r3, fakeTable_1868@l /* 0x8116B564@l */
/* 803CF26C  38 A0 00 EC */	li r5, 0xec
/* 803CF270  4B FF BF E9 */	bl func_803CB258
/* 803CF274  3C 80 80 97 */	lis r4, data_8096CC90@ha /* 0x8096CC90@ha */
/* 803CF278  3C 60 80 97 */	lis r3, data_80977350@ha /* 0x80977350@ha */
/* 803CF27C  38 84 CC 90 */	addi r4, r4, data_8096CC90@l /* 0x8096CC90@l */
/* 803CF280  38 03 73 50 */	addi r0, r3, data_80977350@l /* 0x80977350@l */
/* 803CF284  7C 9F 23 78 */	mr r31, r4
/* 803CF288  7C 1E 03 78 */	mr r30, r0
/* 803CF28C  48 00 00 C4 */	b lbl_803CF350
lbl_803CF290:
/* 803CF290  28 1A 00 00 */	cmplwi r26, 0
/* 803CF294  41 82 00 C4 */	beq lbl_803CF358
/* 803CF298  A0 1A 00 00 */	lhz r0, 0(r26)
/* 803CF29C  28 00 00 00 */	cmplwi r0, 0
/* 803CF2A0  40 82 00 A0 */	bne lbl_803CF340
/* 803CF2A4  3C 60 81 17 */	lis r3, fakeTable_1868@ha /* 0x8116B564@ha */
/* 803CF2A8  7F C4 F3 78 */	mr r4, r30
/* 803CF2AC  38 63 B5 64 */	addi r3, r3, fakeTable_1868@l /* 0x8116B564@l */
/* 803CF2B0  38 A0 00 EC */	li r5, 0xec
/* 803CF2B4  7F 03 C8 2E */	lwzx r24, r3, r25
/* 803CF2B8  63 00 E0 00 */	ori r0, r24, 0xe000
/* 803CF2BC  7F 03 C3 78 */	mr r3, r24
/* 803CF2C0  54 17 04 3E */	clrlwi r23, r0, 0x10
/* 803CF2C4  4B FF FD 99 */	bl mNpc_GetDefGrowPermission
/* 803CF2C8  2C 03 00 00 */	cmpwi r3, 0
/* 803CF2CC  40 82 00 60 */	bne lbl_803CF32C
/* 803CF2D0  3C 60 80 66 */	lis r3, npc_looks_table@ha /* 0x8065A388@ha */
/* 803CF2D4  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 803CF2D8  38 63 A3 88 */	addi r3, r3, npc_looks_table@l /* 0x8065A388@l */
/* 803CF2DC  7F 03 C0 AE */	lbzx r24, r3, r24
/* 803CF2E0  7C 00 C6 30 */	sraw r0, r0, r24
/* 803CF2E4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 803CF2E8  40 82 00 64 */	bne lbl_803CF34C
/* 803CF2EC  7F 43 D3 78 */	mr r3, r26
/* 803CF2F0  7E E4 BB 78 */	mr r4, r23
/* 803CF2F4  7F E5 FB 78 */	mr r5, r31
/* 803CF2F8  4B FF FC 91 */	bl mNpc_SetDefAnimal
/* 803CF2FC  38 00 00 01 */	li r0, 1
/* 803CF300  7E E3 BB 78 */	mr r3, r23
/* 803CF304  7C 00 C0 30 */	slw r0, r0, r24
/* 803CF308  7F A0 03 78 */	or r0, r29, r0
/* 803CF30C  54 1D 06 3E */	clrlwi r29, r0, 0x18
/* 803CF310  4B FF FC C1 */	bl mNpc_SetHaveAppeared
/* 803CF314  7F 83 E3 78 */	mr r3, r28
/* 803CF318  4B FF C9 31 */	bl mNpc_ResetAnimalRelation
/* 803CF31C  3B 5A 09 88 */	addi r26, r26, 0x988
/* 803CF320  3B 9C 00 01 */	addi r28, r28, 1
/* 803CF324  3B 7B FF FF */	addi r27, r27, -1
/* 803CF328  48 00 00 24 */	b lbl_803CF34C
lbl_803CF32C:
/* 803CF32C  2C 03 FF FF */	cmpwi r3, -1
/* 803CF330  40 82 00 1C */	bne lbl_803CF34C
/* 803CF334  7E E3 BB 78 */	mr r3, r23
/* 803CF338  4B FF FC 99 */	bl mNpc_SetHaveAppeared
/* 803CF33C  48 00 00 10 */	b lbl_803CF34C
lbl_803CF340:
/* 803CF340  3B 5A 09 88 */	addi r26, r26, 0x988
/* 803CF344  3B 9C 00 01 */	addi r28, r28, 1
/* 803CF348  3B 7B FF FF */	addi r27, r27, -1
lbl_803CF34C:
/* 803CF34C  3B 39 00 04 */	addi r25, r25, 4
lbl_803CF350:
/* 803CF350  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 803CF354  40 82 FF 3C */	bne lbl_803CF290
lbl_803CF358:
/* 803CF358  39 61 00 30 */	addi r11, r1, 0x30
/* 803CF35C  4B CC BB AD */	bl func_8009AF08
/* 803CF360  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803CF364  7C 08 03 A6 */	mtlr r0
/* 803CF368  38 21 00 30 */	addi r1, r1, 0x30
/* 803CF36C  4E 80 00 20 */	blr 
