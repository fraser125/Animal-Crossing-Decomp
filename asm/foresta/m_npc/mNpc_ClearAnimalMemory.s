lbl_803CB6B4:
/* 803CB6B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803CB6B8  7C 08 02 A6 */	mflr r0
/* 803CB6BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803CB6C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803CB6C4  7C 9F 23 78 */	mr r31, r4
/* 803CB6C8  93 C1 00 08 */	stw r30, 8(r1)
/* 803CB6CC  7C 7E 1B 78 */	mr r30, r3
/* 803CB6D0  48 00 00 80 */	b lbl_803CB750
lbl_803CB6D4:
/* 803CB6D4  28 1E 00 00 */	cmplwi r30, 0
/* 803CB6D8  41 82 00 70 */	beq lbl_803CB748
/* 803CB6DC  7F C3 F3 78 */	mr r3, r30
/* 803CB6E0  48 01 49 AD */	bl mPr_ClearPersonalID
/* 803CB6E4  3C 80 80 64 */	lis r4, data_806432C4@ha /* 0x806432C4@ha */
/* 803CB6E8  38 7E 00 14 */	addi r3, r30, 0x14
/* 803CB6EC  38 84 32 C4 */	addi r4, r4, data_806432C4@l /* 0x806432C4@l */
/* 803CB6F0  48 03 BB 45 */	bl lbRTC_TimeCopy
/* 803CB6F4  38 7E 00 1C */	addi r3, r30, 0x1c
/* 803CB6F8  4B FE 81 D1 */	bl mLd_ClearLandName
/* 803CB6FC  38 80 00 00 */	li r4, 0
/* 803CB700  38 7E 00 32 */	addi r3, r30, 0x32
/* 803CB704  B0 9E 00 24 */	sth r4, 0x24(r30)
/* 803CB708  90 9E 00 2C */	stw r4, 0x2c(r30)
/* 803CB70C  90 9E 00 28 */	stw r4, 0x28(r30)
/* 803CB710  98 9E 00 30 */	stb r4, 0x30(r30)
/* 803CB714  88 1E 00 31 */	lbz r0, 0x31(r30)
/* 803CB718  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 803CB71C  98 1E 00 31 */	stb r0, 0x31(r30)
/* 803CB720  88 1E 00 31 */	lbz r0, 0x31(r30)
/* 803CB724  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 803CB728  98 1E 00 31 */	stb r0, 0x31(r30)
/* 803CB72C  88 1E 00 31 */	lbz r0, 0x31(r30)
/* 803CB730  50 80 2E B4 */	rlwimi r0, r4, 5, 0x1a, 0x1a
/* 803CB734  98 1E 00 31 */	stb r0, 0x31(r30)
/* 803CB738  88 1E 00 31 */	lbz r0, 0x31(r30)
/* 803CB73C  50 80 26 F6 */	rlwimi r0, r4, 4, 0x1b, 0x1b
/* 803CB740  98 1E 00 31 */	stb r0, 0x31(r30)
/* 803CB744  4B FF FF 05 */	bl mNpc_ClearAnimalMail
lbl_803CB748:
/* 803CB748  3B DE 01 38 */	addi r30, r30, 0x138
/* 803CB74C  3B FF FF FF */	addi r31, r31, -1
lbl_803CB750:
/* 803CB750  2C 1F 00 00 */	cmpwi r31, 0
/* 803CB754  40 82 FF 80 */	bne lbl_803CB6D4
/* 803CB758  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803CB75C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803CB760  83 C1 00 08 */	lwz r30, 8(r1)
/* 803CB764  7C 08 03 A6 */	mtlr r0
/* 803CB768  38 21 00 10 */	addi r1, r1, 0x10
/* 803CB76C  4E 80 00 20 */	blr 
