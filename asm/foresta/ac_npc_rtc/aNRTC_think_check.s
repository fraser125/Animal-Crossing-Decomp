lbl_805733A4:
/* 805733A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805733A8  7C 08 02 A6 */	mflr r0
/* 805733AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805733B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805733B4  7C 9F 23 78 */	mr r31, r4
/* 805733B8  93 C1 00 08 */	stw r30, 8(r1)
/* 805733BC  7C 7E 1B 78 */	mr r30, r3
/* 805733C0  48 0B B1 71 */	bl sAdo_BgmFadeoutCheck
/* 805733C4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805733C8  41 82 00 3C */	beq lbl_80573404
/* 805733CC  3C 80 80 6C */	lis r4, door_data@ha /* 0x806BF590@ha */
/* 805733D0  7F E3 FB 78 */	mr r3, r31
/* 805733D4  38 84 F5 90 */	addi r4, r4, door_data@l /* 0x806BF590@l */
/* 805733D8  38 A0 00 01 */	li r5, 1
/* 805733DC  4B E7 DD CD */	bl goto_other_scene
/* 805733E0  7F E3 FB 78 */	mr r3, r31
/* 805733E4  4B E8 A9 ED */	bl mCD_ReCheckLoadLand
/* 805733E8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805733EC  38 80 00 03 */	li r4, 3
/* 805733F0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805733F4  38 00 00 05 */	li r0, 5
/* 805733F8  3C 63 00 02 */	addis r3, r3, 2
/* 805733FC  98 83 61 4F */	stb r4, 0x614f(r3)
/* 80573400  90 1E 09 A8 */	stw r0, 0x9a8(r30)
lbl_80573404:
/* 80573404  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80573408  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057340C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80573410  7C 08 03 A6 */	mtlr r0
/* 80573414  38 21 00 10 */	addi r1, r1, 0x10
/* 80573418  4E 80 00 20 */	blr 
