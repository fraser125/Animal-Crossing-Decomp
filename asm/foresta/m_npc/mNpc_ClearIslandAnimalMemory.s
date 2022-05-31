lbl_803CB770:
/* 803CB770  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803CB774  7C 08 02 A6 */	mflr r0
/* 803CB778  90 01 00 14 */	stw r0, 0x14(r1)
/* 803CB77C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803CB780  7C 9F 23 78 */	mr r31, r4
/* 803CB784  93 C1 00 08 */	stw r30, 8(r1)
/* 803CB788  7C 7E 1B 78 */	mr r30, r3
/* 803CB78C  48 00 00 80 */	b lbl_803CB80C
lbl_803CB790:
/* 803CB790  28 1E 00 00 */	cmplwi r30, 0
/* 803CB794  41 82 00 70 */	beq lbl_803CB804
/* 803CB798  7F C3 F3 78 */	mr r3, r30
/* 803CB79C  48 01 48 F1 */	bl mPr_ClearPersonalID
/* 803CB7A0  3C 80 80 64 */	lis r4, data_806432C4@ha /* 0x806432C4@ha */
/* 803CB7A4  38 7E 00 14 */	addi r3, r30, 0x14
/* 803CB7A8  38 84 32 C4 */	addi r4, r4, data_806432C4@l /* 0x806432C4@l */
/* 803CB7AC  48 03 BA 89 */	bl lbRTC_TimeCopy
/* 803CB7B0  38 7E 00 1C */	addi r3, r30, 0x1c
/* 803CB7B4  38 80 00 0C */	li r4, 0xc
/* 803CB7B8  4B C9 18 B1 */	bl bzero
/* 803CB7BC  38 80 00 00 */	li r4, 0
/* 803CB7C0  38 7E 00 32 */	addi r3, r30, 0x32
/* 803CB7C4  90 9E 00 2C */	stw r4, 0x2c(r30)
/* 803CB7C8  90 9E 00 28 */	stw r4, 0x28(r30)
/* 803CB7CC  98 9E 00 30 */	stb r4, 0x30(r30)
/* 803CB7D0  88 1E 00 31 */	lbz r0, 0x31(r30)
/* 803CB7D4  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 803CB7D8  98 1E 00 31 */	stb r0, 0x31(r30)
/* 803CB7DC  88 1E 00 31 */	lbz r0, 0x31(r30)
/* 803CB7E0  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 803CB7E4  98 1E 00 31 */	stb r0, 0x31(r30)
/* 803CB7E8  88 1E 00 31 */	lbz r0, 0x31(r30)
/* 803CB7EC  50 80 2E B4 */	rlwimi r0, r4, 5, 0x1a, 0x1a
/* 803CB7F0  98 1E 00 31 */	stb r0, 0x31(r30)
/* 803CB7F4  88 1E 00 31 */	lbz r0, 0x31(r30)
/* 803CB7F8  50 80 26 F6 */	rlwimi r0, r4, 4, 0x1b, 0x1b
/* 803CB7FC  98 1E 00 31 */	stb r0, 0x31(r30)
/* 803CB800  4B FF FE 49 */	bl mNpc_ClearAnimalMail
lbl_803CB804:
/* 803CB804  3B DE 01 38 */	addi r30, r30, 0x138
/* 803CB808  3B FF FF FF */	addi r31, r31, -1
lbl_803CB80C:
/* 803CB80C  2C 1F 00 00 */	cmpwi r31, 0
/* 803CB810  40 82 FF 80 */	bne lbl_803CB790
/* 803CB814  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803CB818  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803CB81C  83 C1 00 08 */	lwz r30, 8(r1)
/* 803CB820  7C 08 03 A6 */	mtlr r0
/* 803CB824  38 21 00 10 */	addi r1, r1, 0x10
/* 803CB828  4E 80 00 20 */	blr 
