lbl_80594B80:
/* 80594B80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80594B84  7C 08 02 A6 */	mflr r0
/* 80594B88  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80594B8C  3C C0 81 1F */	lis r6, aINS_clip@ha /* 0x811F2820@ha */
/* 80594B90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80594B94  38 A3 85 38 */	addi r5, r3, common_data@l /* 0x81138538@l */
/* 80594B98  38 66 28 20 */	addi r3, r6, aINS_clip@l /* 0x811F2820@l */
/* 80594B9C  38 80 00 50 */	li r4, 0x50
/* 80594BA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80594BA4  3F E5 00 02 */	addis r31, r5, 2
/* 80594BA8  90 7F 60 88 */	stw r3, 0x6088(r31)
/* 80594BAC  4B AC 84 BD */	bl bzero
/* 80594BB0  3C 80 80 59 */	lis r4, aINS_make_insect@ha /* 0x80594A74@ha */
/* 80594BB4  80 7F 60 88 */	lwz r3, 0x6088(r31)
/* 80594BB8  38 04 4A 74 */	addi r0, r4, aINS_make_insect@l /* 0x80594A74@l */
/* 80594BBC  3C 80 80 59 */	lis r4, aINS_make_ant@ha /* 0x80594AEC@ha */
/* 80594BC0  90 03 00 00 */	stw r0, 0(r3)
/* 80594BC4  3D 00 80 59 */	lis r8, aINS_destruct@ha /* 0x805944FC@ha */
/* 80594BC8  3C E0 80 59 */	lis r7, func_80594300@ha /* 0x80594300@ha */
/* 80594BCC  3C C0 80 59 */	lis r6, aINS_set_pl_act_tim@ha /* 0x80594B58@ha */
/* 80594BD0  80 7F 60 88 */	lwz r3, 0x6088(r31)
/* 80594BD4  38 04 4A EC */	addi r0, r4, aINS_make_ant@l /* 0x80594AEC@l */
/* 80594BD8  3C A0 80 59 */	lis r5, aINS_chk_live_insect@ha /* 0x805945F8@ha */
/* 80594BDC  3C 80 80 59 */	lis r4, func_80594C5C@ha /* 0x80594C5C@ha */
/* 80594BE0  90 03 00 04 */	stw r0, 4(r3)
/* 80594BE4  3C 60 80 59 */	lis r3, aINS_search_near_insect@ha /* 0x80594708@ha */
/* 80594BE8  38 08 44 FC */	addi r0, r8, aINS_destruct@l /* 0x805944FC@l */
/* 80594BEC  38 E7 43 00 */	addi r7, r7, func_80594300@l /* 0x80594300@l */
/* 80594BF0  81 1F 60 88 */	lwz r8, 0x6088(r31)
/* 80594BF4  38 C6 4B 58 */	addi r6, r6, aINS_set_pl_act_tim@l /* 0x80594B58@l */
/* 80594BF8  38 A5 45 F8 */	addi r5, r5, aINS_chk_live_insect@l /* 0x805945F8@l */
/* 80594BFC  38 84 4C 5C */	addi r4, r4, func_80594C5C@l /* 0x80594C5C@l */
/* 80594C00  90 08 00 0C */	stw r0, 0xc(r8)
/* 80594C04  38 03 47 08 */	addi r0, r3, aINS_search_near_insect@l /* 0x80594708@l */
/* 80594C08  80 7F 60 88 */	lwz r3, 0x6088(r31)
/* 80594C0C  90 E3 00 10 */	stw r7, 0x10(r3)
/* 80594C10  80 7F 60 88 */	lwz r3, 0x6088(r31)
/* 80594C14  90 C3 00 14 */	stw r6, 0x14(r3)
/* 80594C18  80 7F 60 88 */	lwz r3, 0x6088(r31)
/* 80594C1C  90 A3 00 18 */	stw r5, 0x18(r3)
/* 80594C20  80 7F 60 88 */	lwz r3, 0x6088(r31)
/* 80594C24  90 83 00 2C */	stw r4, 0x2c(r3)
/* 80594C28  80 7F 60 88 */	lwz r3, 0x6088(r31)
/* 80594C2C  90 03 00 1C */	stw r0, 0x1c(r3)
/* 80594C30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80594C34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80594C38  7C 08 03 A6 */	mtlr r0
/* 80594C3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80594C40  4E 80 00 20 */	blr 
