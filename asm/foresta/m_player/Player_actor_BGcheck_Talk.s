lbl_804FAEF4:
/* 804FAEF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FAEF8  7C 08 02 A6 */	mflr r0
/* 804FAEFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FAF00  4B FD CD 99 */	bl Player_actor_BGcheck_common_type1
/* 804FAF04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FAF08  7C 08 03 A6 */	mtlr r0
/* 804FAF0C  38 21 00 10 */	addi r1, r1, 0x10
/* 804FAF10  4E 80 00 20 */	blr 
