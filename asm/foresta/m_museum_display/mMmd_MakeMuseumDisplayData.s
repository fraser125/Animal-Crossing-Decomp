lbl_803C7C00:
/* 803C7C00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C7C04  7C 08 02 A6 */	mflr r0
/* 803C7C08  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803C7C0C  3C 60 80 66 */	lis r3, mMmd_scene_process_data@ha /* 0x8065A2D0@ha */
/* 803C7C10  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C7C14  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803C7C18  80 A4 00 14 */	lwz r5, 0x14(r4)
/* 803C7C1C  38 83 A2 D0 */	addi r4, r3, mMmd_scene_process_data@l /* 0x8065A2D0@l */
/* 803C7C20  38 60 00 00 */	li r3, 0
/* 803C7C24  48 00 00 2C */	b lbl_803C7C50
lbl_803C7C28:
/* 803C7C28  7C 05 00 00 */	cmpw r5, r0
/* 803C7C2C  40 82 00 20 */	bne lbl_803C7C4C
/* 803C7C30  3C 80 80 66 */	lis r4, mMmd_scene_process_data@ha /* 0x8065A2D0@ha */
/* 803C7C34  38 04 A2 D0 */	addi r0, r4, mMmd_scene_process_data@l /* 0x8065A2D0@l */
/* 803C7C38  7C 60 1A 14 */	add r3, r0, r3
/* 803C7C3C  81 83 00 04 */	lwz r12, 4(r3)
/* 803C7C40  7D 89 03 A6 */	mtctr r12
/* 803C7C44  4E 80 04 21 */	bctrl 
/* 803C7C48  48 00 00 14 */	b lbl_803C7C5C
lbl_803C7C4C:
/* 803C7C4C  38 63 00 08 */	addi r3, r3, 8
lbl_803C7C50:
/* 803C7C50  7C 04 18 2E */	lwzx r0, r4, r3
/* 803C7C54  2C 00 FF FF */	cmpwi r0, -1
/* 803C7C58  40 82 FF D0 */	bne lbl_803C7C28
lbl_803C7C5C:
/* 803C7C5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C7C60  7C 08 03 A6 */	mtlr r0
/* 803C7C64  38 21 00 10 */	addi r1, r1, 0x10
/* 803C7C68  4E 80 00 20 */	blr 
