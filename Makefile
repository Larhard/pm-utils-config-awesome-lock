TARGETS += 50awesome_lock
SAMPLES += awesome_lock.sh

TARGETS_PREFIX = $(DESTDIR)/etc/pm/sleep.d
SAMPLES_PREFIX = $(DESTDIR)/usr/share/pm-utils-config-awesome-lock

INSTALLED_TARGETS = $(addprefix $(TARGETS_PREFIX)/,$(TARGETS))
INSTALLED_SAMPLES = $(addprefix $(SAMPLES_PREFIX)/,$(SAMPLES))

all: $(TARGETS)

install:
	mkdir -p $(TARGETS_PREFIX)
	cp $(TARGETS) $(TARGETS_PREFIX)/
	chmod 0755 $(INSTALLED_TARGETS)
	
	mkdir -p $(SAMPLES_PREFIX)
	cp $(SAMPLES) $(SAMPLES_PREFIX)/

uninstall:
	$(RM) $(INSTALLED_TARGETS) $(INSTALLED_SAMPLES)

.PHONY: install uninstall
