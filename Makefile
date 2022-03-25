BASHRC			=	.bashrc

LOCAL_BASHRC	=	$(addprefix bash/, $(BASHRC))

TARGET_BASHRC	=	$(addprefix ../, $(BASHRC))

TARGETS			=	nvim/	\

########

CP				=	cp -i

########

all:	install
.PHONY:	all

install:
	$(CP) $(LOCAL_BASHRC) $(TARGET_BASHRC)
	for folder in $(TARGETS); do stow $$folder ; done
.PHONY:	install

uninstall:
	$(RM) $(TARGET_BASHRC)
	for folder in $(TARGETS); do stow -D $$folder ; done
.PHONY:	uninstall

re::	uninstall
re::	install
.PHONY:	re
