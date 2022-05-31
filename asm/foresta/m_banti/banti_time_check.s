lbl_80377B84:
/* 80377B84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80377B88  7C 08 02 A6 */	mflr r0
/* 80377B8C  3C 60 81 13 */	lis r3, banti@ha /* 0x8112C968@ha */
/* 80377B90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80377B94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80377B98  3B E3 C9 68 */	addi r31, r3, banti@l /* 0x8112C968@l */
/* 80377B9C  93 C1 00 08 */	stw r30, 8(r1)
/* 80377BA0  80 7F 00 C8 */	lwz r3, 0xc8(r31)
/* 80377BA4  80 1F 01 78 */	lwz r0, 0x178(r31)
/* 80377BA8  80 9F 02 28 */	lwz r4, 0x228(r31)
/* 80377BAC  7C 60 03 78 */	or r0, r3, r0
/* 80377BB0  80 7F 02 D8 */	lwz r3, 0x2d8(r31)
/* 80377BB4  7C 80 03 78 */	or r0, r4, r0
/* 80377BB8  80 9F 03 88 */	lwz r4, 0x388(r31)
/* 80377BBC  7C 60 03 78 */	or r0, r3, r0
/* 80377BC0  80 7F 04 38 */	lwz r3, 0x438(r31)
/* 80377BC4  7C 80 03 78 */	or r0, r4, r0
/* 80377BC8  7C 7E 03 79 */	or. r30, r3, r0
/* 80377BCC  40 82 00 08 */	bne lbl_80377BD4
/* 80377BD0  4B FF FD 79 */	bl banti_chk_anime_start
lbl_80377BD4:
/* 80377BD4  4B FF FB C1 */	bl banti_anime_proc
/* 80377BD8  80 7F 00 C8 */	lwz r3, 0xc8(r31)
/* 80377BDC  80 1F 01 78 */	lwz r0, 0x178(r31)
/* 80377BE0  80 9F 02 28 */	lwz r4, 0x228(r31)
/* 80377BE4  7C 60 03 78 */	or r0, r3, r0
/* 80377BE8  80 7F 02 D8 */	lwz r3, 0x2d8(r31)
/* 80377BEC  7C 80 03 78 */	or r0, r4, r0
/* 80377BF0  80 9F 03 88 */	lwz r4, 0x388(r31)
/* 80377BF4  7C 60 03 78 */	or r0, r3, r0
/* 80377BF8  80 7F 04 38 */	lwz r3, 0x438(r31)
/* 80377BFC  7C 80 03 78 */	or r0, r4, r0
/* 80377C00  7C 60 03 78 */	or r0, r3, r0
/* 80377C04  7C 1E 00 00 */	cmpw r30, r0
/* 80377C08  41 82 00 44 */	beq lbl_80377C4C
/* 80377C0C  2C 1E 00 00 */	cmpwi r30, 0
/* 80377C10  40 82 00 28 */	bne lbl_80377C38
/* 80377C14  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80377C18  3C 80 81 13 */	lis r4, banti@ha /* 0x8112C968@ha */
/* 80377C1C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80377C20  38 A4 C9 68 */	addi r5, r4, banti@l /* 0x8112C968@l */
/* 80377C24  3C 83 00 02 */	addis r4, r3, 2
/* 80377C28  38 65 04 44 */	addi r3, r5, 0x444
/* 80377C2C  38 84 61 20 */	addi r4, r4, 0x6120
/* 80377C30  48 08 F6 05 */	bl lbRTC_TimeCopy
/* 80377C34  48 00 00 18 */	b lbl_80377C4C
lbl_80377C38:
/* 80377C38  3C 60 81 13 */	lis r3, banti@ha /* 0x8112C968@ha */
/* 80377C3C  38 83 C9 68 */	addi r4, r3, banti@l /* 0x8112C968@l */
/* 80377C40  38 64 04 3C */	addi r3, r4, 0x43c
/* 80377C44  38 84 04 44 */	addi r4, r4, 0x444
/* 80377C48  48 08 F5 ED */	bl lbRTC_TimeCopy
lbl_80377C4C:
/* 80377C4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80377C50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80377C54  83 C1 00 08 */	lwz r30, 8(r1)
/* 80377C58  7C 08 03 A6 */	mtlr r0
/* 80377C5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80377C60  4E 80 00 20 */	blr 
