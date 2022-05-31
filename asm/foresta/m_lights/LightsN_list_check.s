lbl_803BBF30:
/* 803BBF30  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803BBF34  7C 08 02 A6 */	mflr r0
/* 803BBF38  90 01 00 24 */	stw r0, 0x24(r1)
/* 803BBF3C  39 61 00 20 */	addi r11, r1, 0x20
/* 803BBF40  4B CD EF 91 */	bl func_8009AED0
/* 803BBF44  7C BE 2B 79 */	or. r30, r5, r5
/* 803BBF48  7C 7C 1B 78 */	mr r28, r3
/* 803BBF4C  7C 9D 23 78 */	mr r29, r4
/* 803BBF50  40 82 00 44 */	bne lbl_803BBF94
/* 803BBF54  3C 60 80 64 */	lis r3, poslight_type_proc@ha /* 0x806425DC@ha */
/* 803BBF58  3B E3 25 DC */	addi r31, r3, poslight_type_proc@l /* 0x806425DC@l */
/* 803BBF5C  48 00 00 2C */	b lbl_803BBF88
lbl_803BBF60:
/* 803BBF60  80 9D 00 00 */	lwz r4, 0(r29)
/* 803BBF64  7F 83 E3 78 */	mr r3, r28
/* 803BBF68  7F C5 F3 78 */	mr r5, r30
/* 803BBF6C  88 04 00 00 */	lbz r0, 0(r4)
/* 803BBF70  38 84 00 02 */	addi r4, r4, 2
/* 803BBF74  54 00 10 3A */	slwi r0, r0, 2
/* 803BBF78  7D 9F 00 2E */	lwzx r12, r31, r0
/* 803BBF7C  7D 89 03 A6 */	mtctr r12
/* 803BBF80  4E 80 04 21 */	bctrl 
/* 803BBF84  83 BD 00 08 */	lwz r29, 8(r29)
lbl_803BBF88:
/* 803BBF88  28 1D 00 00 */	cmplwi r29, 0
/* 803BBF8C  40 82 FF D4 */	bne lbl_803BBF60
/* 803BBF90  48 00 00 40 */	b lbl_803BBFD0
lbl_803BBF94:
/* 803BBF94  3C 60 80 64 */	lis r3, light_type_proc@ha /* 0x806425D0@ha */
/* 803BBF98  3B E3 25 D0 */	addi r31, r3, light_type_proc@l /* 0x806425D0@l */
/* 803BBF9C  48 00 00 2C */	b lbl_803BBFC8
lbl_803BBFA0:
/* 803BBFA0  80 9D 00 00 */	lwz r4, 0(r29)
/* 803BBFA4  7F 83 E3 78 */	mr r3, r28
/* 803BBFA8  7F C5 F3 78 */	mr r5, r30
/* 803BBFAC  88 04 00 00 */	lbz r0, 0(r4)
/* 803BBFB0  38 84 00 02 */	addi r4, r4, 2
/* 803BBFB4  54 00 10 3A */	slwi r0, r0, 2
/* 803BBFB8  7D 9F 00 2E */	lwzx r12, r31, r0
/* 803BBFBC  7D 89 03 A6 */	mtctr r12
/* 803BBFC0  4E 80 04 21 */	bctrl 
/* 803BBFC4  83 BD 00 08 */	lwz r29, 8(r29)
lbl_803BBFC8:
/* 803BBFC8  28 1D 00 00 */	cmplwi r29, 0
/* 803BBFCC  40 82 FF D4 */	bne lbl_803BBFA0
lbl_803BBFD0:
/* 803BBFD0  39 61 00 20 */	addi r11, r1, 0x20
/* 803BBFD4  4B CD EF 49 */	bl func_8009AF1C
/* 803BBFD8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803BBFDC  7C 08 03 A6 */	mtlr r0
/* 803BBFE0  38 21 00 20 */	addi r1, r1, 0x20
/* 803BBFE4  4E 80 00 20 */	blr 
